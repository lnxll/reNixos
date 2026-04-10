{
  ...
}:
{
  flake.modules.nixos."hosts/x390y" = {
    fileSystems."/" = {
      device = "/dev/disk/by-uuid/5dd9facc-2945-4ce9-ae07-daea1853a88b";
      fsType = "ext4";
    };

    fileSystems."/boot" = { 
      device = "/dev/disk/by-uuid/B18A-28B9";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };

    swapDevices = [
      { 
        device = "/dev/disk/by-uuid/3211b093-eab1-4c66-bbd6-4f9b644745b6"; 
      }
    ];
  };
}