{ config, ... }:

{
  # Enable and configure bluetooth
  hardware.bluetooth = {
    # Enable on boot
    enable = true;
    powerOnBoot = true;
    # Config
    settings = {
      General = {
        Name = "Computer";
	ControllerMode = "dual";
	FastConnectable = "true";
	Experimental = "true";
	Enable = "Source,Sink,Media,Socket";
      };
      Policy = { AutoEnable = "true"; };
      LE = { EnableAdvModInterleaveScan = "true"; };
    };
  };

  # Enable blueman
  services.blueman.enable = true;

  # Bluetooth enhancements through pipewire and wireplumber
  services.pipewire.wireplumber = {
    extraConfig.bluetoothEnhancements = {
      "monitor.bluez.properties" = {
        "bluez5.enable-sbc-xq" = true;
        "bluez5.enable-msbc" = true;
        "bluez5.enable-hw-volume" = true;
        "bluez5.roles" = [ "a2dp_sink" "a2dp_source" "bap_sink" "bap_source" "hsp_hs" "hsp_ag" "hfp_hf" "hfp_ag" ];
	"bluez5.codecs" = [ "sbc" "sbc_xq" "aac" ];
	"bluez5.hfphsp-backend" = "native";
      };
    };
  };
}
