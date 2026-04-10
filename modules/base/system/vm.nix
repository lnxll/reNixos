{
  flake.modules.nixos.nixos = {
    virtualisation.vmVariant = {
      virtualisation = {
        memorySize = 8192;
        cores = 4;
      };
    };
  };
}