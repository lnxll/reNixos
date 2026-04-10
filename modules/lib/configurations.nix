{
  config,
  inputs,
  lib,
  ...
}:
let
  mkNixos =
    system: cls: name:
    inputs.nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        config.flake.modules.nixos.${cls}
        config.flake.modules.nixos."hosts/${name}"
        {
          home-manager.users.lnxll.imports = [
            config.flake.modules.homeManager.homeManager
            (config.flake.modules.homeManager."hosts/${name}" or {})
          ];
          
          networking.hostName = lib.mkDefault name; # имя хоста
          nixpkgs.hostPlatform = lib.mkDefault system;
          # Определяет версию NixOS, от которой берутся дефолты для состояния системы
          # (пути, базы данных и т.п.).
          # Обычно остаётся версией первой установки.
          # Перед изменением — см. документацию.
          system.stateVersion = "25.05";
        }
      ];
    };
  linux = mkNixos "x86_64-linux" "nixos";
  linux-arm = mkNixos "aarch64-linux" "nixos";
in
{
  flake.lib = {
    mkSystem = {
      inherit
        linux
        linux-arm
        ;
    };

    loadModulesForUser =
      config: modules:
      assert builtins.isAttrs config;
      assert builtins.isList modules;
      (builtins.map (module: config.flake.modules.nixos.${module} or { }) modules)
      ++ [
        {
          imports = [ inputs.home-manager.nixosModules.home-manager ];

          home-manager.users.lnxll.imports = builtins.map (
            module: config.flake.modules.homeManager.${module} or { }
          ) modules;
        }
      ];
  };
}