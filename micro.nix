{ stdenv, buildGoPackage, fetchFromGitHub }:

buildGoPackage rec {
  name = "micro-${version}";
  version = "1.3.3";
  rev = "refs/tags/v${version}";

  #buildInputs = [
  #  go-humanize
  #  json5
  #];

  goPackagePath = "github.com/zyedidia/micro";

  src = fetchFromGitHub {
      owner = "zyedidia";
      repo = "micro";    
      inherit rev;
      sha256 = "1rj7l5ignlg3zc6yq2mga32yabc3ql023jhqp9541f4n7mh0bpyw";
  };

 #goDeps = ./deps.nix;

  meta = with stdenv.lib; {
      description = "A modern and intuitive terminal-based text editor";
      homepage = "https://micro-editor.github.io/";
      platforms = platforms.unix;
      license = licenses.mit;
      maintainers = with maintainers; [ petersjt014 ];
  };
}
