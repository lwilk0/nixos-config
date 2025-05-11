{ pkgs, ... }:

{
  # Latest kernel
  #boot.kernelPackages = pkgs.linuxPackages_zen;
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
