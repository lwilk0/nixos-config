{ pkgs, ... }:

{
  # Latest kernel
  boot.kernelPackages = pkgs.linuxPackages_xanmod;

}
