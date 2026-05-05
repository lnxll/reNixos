{
  flake.modules.nixos.nixos = 
  { pkgs, ... }:
  {
    users = {
      mutableUsers = false;
      users = {
        root = {
          # mkpasswd -m sha-512
          initialHashedPassword = "$6$5g56DAUWeYif8XLA$B0BtntZOkzIfiNh.Atsz8fVVT2Q/.Kj6m0Tz/EescOL09f76sjSu5ZjnYfXkztdygcUWAvKMibEkgUXN.KKsA/";
        };

        lnxll = {
          isNormalUser = true;
          description = "lnxll";
          shell = pkgs.fish;
          initialHashedPassword = "$6$Cte70KNrlMqlUuhA$nHgA6m/sjSBPd56mvCWgHBTcAoeHGyC1FkBtP23GBJtZDtrDIamtqSSllo2Z3zin5nPQNGZtB/KWjykNL5eUY.";
          extraGroups = [ 
            "wheel"
            "input"
            "networkmanager"
            "storage"
            "kvm"
            "adbusers"
            "docker"
          ];
        };
      };
    };
  };
}