{
  flake.modules.nixos.nixos = {
    virtualisation = {
      docker = {
        enable = true;
        rootless = {
          enable = true;
        };
      };
    };
  };
}