{
  flake.modules.nixos.nixos = {
    networking = {
      networkmanager = {
        enable = true;
        wifi = {
          macAddress = "random";
          powersave = true;
        };
      };
    };
    
    users.extraGroups."networkmanager".members = [
      "lnxll"
    ];
  };
}