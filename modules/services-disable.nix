{ lib, ... }:

{
  # Disable NetworkManager-wait-online.service
  systemd.services.NetworkManager-wait-online.wantedBy = lib.mkForce [];
  # Disable Firewalld.service
  systemd.services.firewalld.wantedBy = lib.mkForce [];
}
