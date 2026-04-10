{
  flake.modules.nixos.messaging = 
  { pkgs, ... }:
  {
    environment.systemPackages = [ pkgs.ayugram-desktop ];
  };
}