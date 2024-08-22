{pkgs, ...}: {
  imports = [
    ./nixvim
    ./firefox.nix
    ./fish.nix
    ./git.nix
    ./kde-plasma-5.nix
    ./kitty.nix
    #./polybar.nix
    ./qbittorrent.nix
    ./touchegg.nix
    ./vscode.nix
  ];

  home.packages = [
    pkgs.anki-bin
    pkgs.discord
    pkgs.obs-studio
    pkgs.mpv
    pkgs.obsidian
    pkgs.spotify
    pkgs.quickemu
    pkgs.vlc
    pkgs.zed-editor

    pkgs.bluez
    pkgs.devenv
    pkgs.fd
    pkgs.ffmpeg
    pkgs.file
    pkgs.hyfetch
    pkgs.ripgrep
    pkgs.unzip
    pkgs.wget
    pkgs.gh
    pkgs.tailscale
    pkgs.xclip
    pkgs.zip
  ];

  programs.home-manager.enable = true;

  xsession.numlock.enable = true;
}
