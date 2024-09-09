{pkgs, ...}: {
  imports = [
    ./nixvim
    ./firefox.nix
    ./fish.nix
    ./git.nix
    ./kde-plasma-5.nix
    ./kitty.nix
    ./stylix.nix
    #./polybar.nix
    ./qbittorrent.nix
    ./touchegg.nix
    ./vscode.nix
  ];

  home.packages = [
    pkgs.anki-bin
    pkgs.discord
    pkgs.gcc
    pkgs.htop
    pkgs.obs-studio
    pkgs.mpv
    pkgs.obsidian
    pkgs.spotify
    pkgs.quickemu
    pkgs.vlc
    pkgs.zed-editor

    pkgs.ani-cli
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
    pkgs.typst
    pkgs.typst-live
    pkgs.xclip
    pkgs.zip
  ];

  programs.home-manager.enable = true;

  xsession.numlock.enable = true;
}
