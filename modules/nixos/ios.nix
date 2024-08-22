{pkgs, ...}: {
  services.usbmuxd.enable = true;

  environment.systemPackages = [
    pkgs.libimobiledevice
    pkgs.ifuse # optional, to mount using 'ifuse'
  ];
}
