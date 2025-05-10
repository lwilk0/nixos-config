{ ... }:

{
  # Tell electron apps there running on wayland
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };
}
