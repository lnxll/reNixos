{
  flake.modules.homeManager.firefox = {
    programs.firefox.profiles = {
      
      default = {
        id = 0;
        name = "default";
        isDefault = true;
        settings = {
          "browser.compactmode.show" = true;
        };
      };
      
    };
  };
}