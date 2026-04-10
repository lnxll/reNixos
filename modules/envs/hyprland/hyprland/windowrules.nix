{
  flake.modules.homeManager.hyprland = {
    wayland.windowManager.hyprland.settings = {
      windowrule = [
        "match:class feh, match:float on, max_size 1920 1080"
        "match:title sxiv, match:float on, move -10 140"
        "float on, match:class com.ayugram.desktop"
      ];
    };
  };
}
