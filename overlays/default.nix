# Nixpkgs overlay which aggregates overlays
self: super:

with super.lib;

(foldl' (flip extends) (_: super) [

  (import ./pkgs-overlay.nix)
  # (import ./modules-overlay.nix)

]) self