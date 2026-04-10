{
  flake.modules.homeManager.firefox = {
    programs.firefox.policies.ExtensionSettings = {
      # default_area: navbar / menupanel
          
      # uBlock Origin
      "uBlock0@raymondhill.net" = {
        private_browsing = true;
        default_area = "navbar";
        installation_mode = "force_installed";
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
      };

      # TWP - Translate Web Pages 
      "{036a55b4-5e72-4d05-a06c-cba2dfcc134a}" = {
        private_browsing = true;
        default_area = "navbar";
        installation_mode = "force_installed";
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/traduzir-paginas-web/latest.xpi";
      };
      
      # Vimium
      "{d7742d87-e61d-4b78-b8a1-b469842139fa}" = {
        private_browsing = true;
        default_area = "navbar";
        installation_mode = "force_installed";
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/vimium-ff/latest.xpi";
      };
      
      # Tampermonkey
      "firefox@tampermonkey.net" = {
        private_browsing = true;
        default_area = "navbar";
        installation_mode = "force_installed";
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/tampermonkey/latest.xpi";
      };
      
    };
  };
}