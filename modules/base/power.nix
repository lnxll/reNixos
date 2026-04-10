{
  flake.modules.nixos.nixos = {
    powerManagement.enable = true;

    services = {
      power-profiles-daemon.enable = true;
      upower.enable = true;
    };
  };
}