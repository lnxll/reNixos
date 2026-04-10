{
  flake.modules.nixos.nixos = {
    security = {
      rtkit.enable = true;

      sudo-rs = {
        enable = true;
        execWheelOnly = true;
      };
    };
  };
}