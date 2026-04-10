{
  flake.modules = {
    nixos.nixos = {
      programs.fish.enable = true;
    };

    homeManager.homeManager = 
    { pkgs, ... }:
    {
      programs.fish = {
        enable = true;
        
        interactiveShellInit =
          ''
            set -U fish_greeting "🐟"
          '';

        shellAbbrs = {
          l = "ls";
          c = "clear";

          ff = "fastfetch";
        };
      };
    };
  };
}