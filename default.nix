# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs ? import <nixpkgs> {} }:

{
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  dtn7-go = pkgs.callPackage ./pkgs/dtn7-go {
    version = "0.5.2";
    rev = "v0.5.2";
    sha256 = "1i6i98jimp6k3m4b6hh26hwhmm0s0mafmf9584h02bi1z51r6b11";
    modSha256 = "1rbpq6b1c3pfvrlb53ynfk7d53ylsp90c3m8k3k7wjp0sy982li5";
  };

  dtn7-go-unstable = pkgs.callPackage ./pkgs/dtn7-go {
    version = "unstable-2019-12-12-4a5f5f8";
    rev = "4a5f5f8c5fa017c2bbec267f36fc9999e00ef6c0";
    sha256 = "1hsajf677nphd60p2z6cpbzjz6dv1hf21fl4n9irwyxcyy2iqss6";
    modSha256 = "0d026p58cmv8i7vdmihrq8dahv8hy5ch45f9sjg8wmwszaz1rhpx";
  };
}
