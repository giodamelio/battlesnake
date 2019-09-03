{ pkgs ? import <nixpkgs> {} }:
let
  callPackage = pkgs.lib.callPackageWith pkgs;
  battlesnake = callPackage ./battlesnake.nix {};
in {
  app = pkgs.mkShell {
    buildInputs = with pkgs; [
      elixir
      jq
      battlesnake
    ];
    shellHook = ''
    '';
  };
}
