{ pkgs, fetchurl, ... }:

pkgs.stdenv.mkDerivation rec {
  name = "battlesnake";
  version = "0.2.23";

  src = fetchurl {
    url = "https://github.com/battlesnakeio/engine/releases/download/v${version}/engine_${version}_Linux_x86_64.tar.gz";
    sha256 = "1jqk76jfyqbna2ig5wa6cgk231mq273aa8z3yl4wivfkl3jpmcfv";
  };
  sourceRoot = ".";

  phases = "unpackPhase installPhase";

  installPhase = ''
    mkdir $out
    mv engine board/ public/ $out
    mkdir $out/bin
    ln -s $out/engine $out/bin/battlesnake-engine
  '';
}
