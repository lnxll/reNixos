{
  flake.modules.homeManager.android =
  { pkgs, ...}:
  {
    home.packages = with pkgs; [ 
      android-tools
      heimdall # samsung
    ];
  };
}