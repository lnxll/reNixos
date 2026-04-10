{
  flake.modules.homeManager.messaging = {
    programs.vesktop = {
      enable = true;
      settings = {
        discordBranch = "stable";
        minimizeToTray = false;
      };
    };
  };
}