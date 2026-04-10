{
  flake.modules.homeManager.desktop = {
    stylix.targets.foot.enable = false;
    
    programs.foot = {
      enable = true;
    };
  };
}