{
  flake.modules.nixos.nixos = 
  { pkgs, ... }:
  {
    environment.systemPackages = with pkgs; [
      ntfs3g # ntfs driver
      lm_sensors
      btop
      bat # alternative cat
      vim
      
      # downloading
      wget
      
      # archives
      zip
      unzip
      rar
      unrar


    ];
  };
}