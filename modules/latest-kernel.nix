{ pkgs, ... }:

{
  # Latest kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;

}
