{
  lib,
  ...
}:
{
  flake.modules.nixos.nixos = 
  { pkgs, ... }:
  {
    boot = {
      consoleLogLevel = 3;
      kernelParams = [
        "quiet"
      ];

      loader = {
        systemd-boot.enable = true;
        efi.canTouchEfiVariables = true;
        systemd-boot.configurationLimit = 10;
      };

      kernelPackages = lib.mkDefault pkgs.linuxPackages_latest;
      supportedFilesystems = [ "ntfs" ];
    };
  };
}