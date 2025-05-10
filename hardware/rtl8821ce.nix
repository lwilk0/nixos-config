{ config, ... }:

{
  # Load drivers for rtl8821ce network card
  boot.kernelModules = [ "8821ce" ];
  boot.extraModulePackages = with config.boot.kernelPackages; [
    rtl8821ce
  ];
}
