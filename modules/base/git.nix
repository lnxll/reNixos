{
  flake = {
    modules.nixos.nixos = 
    { pkgs, ... }:
    {
      programs.git = {
        enable = true;
        package = pkgs.gitFull;    
      };
    };

    modules.homeManager.homeManager = {
      programs.git = {
        enable = true;

        settings = {
          user = {
            Name = "lnxll";
            Email = "118633911+lnxll@users.noreply.github.com";
          };
          init.defaultBranch = "main";
          color.ui = "auto";
        };
      };
    };
  };
}