{ ... }:

{
  boot = {
    kernelParams = [ "profile" "quiet" "loglevel=3" ];
    loader.timeout = 1;
  };
}
