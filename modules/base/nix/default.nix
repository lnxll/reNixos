{
  ...
}:
{
  flake.modules.nixos.nixos = {
    nix = {
      channel.enable = false;
      settings = {
        max-jobs = "auto";
        trusted-users = [ "@wheel" ];
        experimental-features = [
            "nix-command"
            "flakes"          
        ];
      };
      
      # Настройки автоматической очистки (garbage collection) Nix
      gc = {
        automatic = true;
        persistent = true;
        dates = "weekly";
        options = "--delete-older-than 7d";
      };
      
      extraOptions = "warn-dirty = false";
    };

    nixpkgs.config.allowUnfree = true;
  };
}