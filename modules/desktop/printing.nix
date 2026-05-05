{
  flake.modules.nixos.printing = 
  { pkgs, ... }: {
    services.printing = {
      enable = true;
      listenAddresses = [ "*:631" ];
      allowFrom = [ "all" ];
      browsing = true;
      browsedConf = ''
        CreateIPPPrinterQueues All
      '';
      defaultShared = true;
      openFirewall = true;
      drivers = [
        pkgs.epson-escpr2
        ];
    };
    services.avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
      publish = {
        enable = true;
        userServices = true;
      };
    };
    environment.systemPackages = with pkgs; [
      epsonscan2
      kdePackages.print-manager
    ];
  };
}