{
  flake.modules.nixos.desktop = 
  { pkgs, ... }:
  {
    environment.systemPackages = with pkgs; [
      yazi                  # file manager (main)
      nautilus              # file manager
      feh                   # view photo
      vlc                   # view video
      mpv                   # view video
      tenki                 # fullscreen time
      mpris-timer           # timer for study ### todo add to xdg
      # digikam               # for photographics
      # youtube-music         # YT MUSIC
      qemu
      brightnessctl
      kicad
    ];
  };
}