let
  localOverlays = import ./overlays;
  nixpkgs = import <nixpkgs> { overlays = [ localOverlays ]; };
in 
  with nixpkgs;

  stdenv.mkDerivation {
    name = "my-env";
    buildInputs = [ 
      (import ./nixops/release.nix {}).build.x86_64-linux
      kubernetes-helm
      kubernetes
    ];
  }
