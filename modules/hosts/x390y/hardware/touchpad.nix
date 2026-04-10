{
  flake.modules.nixos."hosts/x390y" = {
    boot.kernelParams = [
      "psmouse.synaptics_intertouch=1"
    ];
  };
}