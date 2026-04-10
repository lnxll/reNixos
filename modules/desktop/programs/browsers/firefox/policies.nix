{
  flake.modules.homeManager.firefox = {
    programs.firefox.policies = {
      AllowFileSelectionDialogs = true;
      AppAutoUpdate = false;
      DisableAppUpdate = true;
      BackgroundAppUpdate = false;
  
      AutofillAddressEnabled = false;
      AutofillCreditCardEnabled = false;

      DisableFirefoxAccounts = true;
      DisableFirefoxStudies = true;
      # DisableFormHistory = true;
      DisablePocket = true;
      DisablePrivateBrowsing = false;
      DisableProfileImport = false;
      DisableTelemetry = true;
      DisableFeedbackCommands = true;
      DontCheckDefaultBrowser = true;
      EnableTrackingProtection = {
        Value = true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
      };
      FirefoxHome = {
        Search = true;
        TopSites = false;
        SponsoredTopSites = false;
        Highlights = false;
        Pocket = false;
        SponsoredPocket = false;
        Snippets = false;
        Locked = false;
      };
      NoDefaultBookmarks = true;
      PasswordManagerEnabled = false;

      UserMessaging = {
        ExtensionRecommendations = false;
        SkipOnboarding = true;
      };
    };
  };
}