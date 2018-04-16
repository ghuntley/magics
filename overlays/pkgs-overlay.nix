self: super:

{
  kubernetes-helm = super.callPackage ./pkgs/helm { };
  kubernetes = super.callPackage ./pkgs/kubernetes { };
}