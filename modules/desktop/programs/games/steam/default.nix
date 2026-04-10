{
  flake.modules.nixos.gaming = 
  { pkgs, ... }:
  {
    # mods for games
    environment.systemPackages = with pkgs; [ r2modman ];

    programs.steam = {
      enable = true;
    };
  };
}