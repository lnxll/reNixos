{
  flake.modules.homeManager.obsidian = {
    programs.obsidian = {
      enable = true;
      vaults = {
        Vault = {
          enable = true;
          target = "Vault";
        };
        maturita = {
          enable = true;
          target = "obsidian/maturita";
        };
      };
    };
  };
}