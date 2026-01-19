{ userConfig, ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        email = userConfig.email;
        name = userConfig.fullName;
      };
      pull.rebase = "true";
    };
    signing = {
      key = userConfig.gitKey;
      signByDefault = true;
    };
  };
}