{
  ...
}:
{
  flake.modules = {
    nixos.nixos = {
      # todo
      environment.pathsToLink = [ "/share/applications" "/share/xdg-desktop-portal" ];

      home-manager = {
        backupFileExtension = "hm-backup";
        useUserPackages = true;
        useGlobalPkgs = true;
      };
    };

    homeManager.homeManager =
    { ... }: {
      home = {
        username = "lnxll";
        homeDirectory = "/home/lnxll";
        stateVersion = "25.05";
      };
      programs.home-manager.enable = true;
    };
  };
}