{
  config,
  ...
}:
let
  # show all modules:
  # inputs.nixpkgs.lib.lists.unique (
  #   (builtins.attrNames modules.homeManager) 
  #   ++ (builtins.attrNames modules.nixos))
  modules = [
    ### core
    "desktop"
    "hyprland"
    "kitty"
    
    ### services
    "bluetooth"
    "syncthing"

    ### programs
    "gaming"
    # "minecraft"
    "libreoffice"
    "messaging"
    "vscodium"
    "firefox"
    # "zen-browser"
    "obsidian"

    ### tool
    "android"
  ];
in
{
  flake = {
    nixosConfigurations.x390y = config.flake.lib.mkSystem.linux "x390y";
    modules = {
      nixos."hosts/x390y" = {
        imports = (config.flake.lib.loadModulesForUser config modules);

      };
    };
  };
}