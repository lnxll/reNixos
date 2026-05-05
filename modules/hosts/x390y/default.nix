{
  config,
  ...
}:
let
  # show all modules:
  # inputs.nixpkgs.lib.lists.unique (
  #   (builtins.attrNames modules.homeManager) 
  #   ++ (builtins.attrNames modules.nixos))
  modules = [
    ### core
    "desktop"
    "hyprland"
    "kitty"
    
    ### services
    "bluetooth"
    "syncthing"

    ### programs
    "keepassxc"
    "gaming"
    # "minecraft"
    "libreoffice"
    "messaging"
    "vscodium"
    "firefox"
    "zen-browser"
    "obsidian"
    "printing"

    ### tool
    "android"
  ];
in
{
  flake = {
    nixosConfigurations.x390y = config.flake.lib.mkSystem.linux "x390y";
    modules = {
      nixos."hosts/x390y" = 
      { pkgs, ... }: {
        imports = (config.flake.lib.loadModulesForUser config modules);

        environment.systemPackages = with pkgs; [ 
          # autorotation [todo]
          iio-sensor-proxy jq 
          
          # android [todo]
          gvfs
          jmtpfs
          simple-mtpfs
          mtpfs
          ];
        hardware.sensor.iio.enable = true;
        programs.iio-hyprland.enable = true;
        
      };
    };
  };
}