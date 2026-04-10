{
  flake.modules.homeManager.firefox = {
    stylix.targets.firefox.profileNames = [ 
      "default"
    ];
    
    programs.firefox = {
      enable = true;
    };
  };
}