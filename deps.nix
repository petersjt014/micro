[
  {
    goPackagePath = "github.com/blang/semver";
    fetch = rec {
      type = "git";
      url = "https://github.com/blang/semver";
      version = "3.5.1";
      rev = "refs/tags/v${version}";
      sha256 = "13ws259bwcibkclbr82ilhk6zadm63kxklxhk12wayklj8ghhsmy";
    };

  }
]
