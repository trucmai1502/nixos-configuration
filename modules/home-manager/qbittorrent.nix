{pkgs, ...}: {
  home = {
    file.".config/autostart/org.qbittorrent.qBittorrent.desktop".text = ''
      [Desktop Entry]
      Categories=Network;FileTransfer;P2P;Qt;
      Comment=Download and share files over BitTorrent
      Exec=qbittorrent %U
      GenericName=BitTorrent client
      Icon=qbittorrent
      Keywords=bittorrent;torrent;magnet;download;p2p;
      MimeType=application/x-bittorrent;x-scheme-handler/magnet;
      Name=qBittorrent
      SingleMainWindow=true
      StartupNotify=false
      StartupWMClass=qbittorrent
      Terminal=false
      Type=Application
    '';
    packages = [pkgs.qbittorrent];
  };
}
