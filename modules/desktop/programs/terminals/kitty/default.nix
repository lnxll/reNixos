{
  flake.modules.homeManager.kitty = {
    programs.kitty = {
      enable = true;

      settings = {
        touch_scroll_multiplier = "5.0";
        window_padding_width = 20;
      };

      extraConfig = ''
        map ctrl+c copy_to_clipboard
        map ctrl+v paste_from_clipboard
        '' 
        # support ua/ru kb
        + ''
        map ctrl+с copy_to_clipboard
        map ctrl+м paste_from_clipboard
      '';
    };
  };
}