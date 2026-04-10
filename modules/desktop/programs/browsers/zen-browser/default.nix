{inputs, ...}:
{
  flake.modules.homeManager.zen-browser = {
    imports = [ inputs.zen-browser.homeModules.beta ];

    config.stylix.targets.zen-browser.profileNames = [
      "default"
    ];
  
    config = {
      programs.zen-browser = {
        enable = true;
        profiles.default = {
          id = 0;
          name = "default";
          isDefault = true;
        };
      };
    };
  };
}