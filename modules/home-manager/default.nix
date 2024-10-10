{pkgs, ...}: {
  imports = [
    ./DE-env.nix
    ./rofi.nix
    ./nixvim
    ./firefox.nix
    ./fish.nix
    ./git.nix
    ./kde-plasma-5.nix
    ./kitty.nix
    #./polybar.nix
    ./qbittorrent.nix
    ./touchegg.nix
    ./vscode.nixvim
  ];

  home.packages = [
    pkgs.anki-bin
    pkgs.discord
    pkgs.fastfetch
    pkgs.gcc
    pkgs.htop
    pkgs.obs-studio
    pkgs.mpv
    pkgs.obsidian
    pkgs.spotify
    pkgs.quickemu
    pkgs.vlc
    pkgs.zed-editor
    pkgs.jetbrains.pycharm-community

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
    pkgs.tinymist
    pkgs.xclip
    pkgs.zip
    pkgs.pwndbg
  ];

  programs.home-manager.enable = true;
  xsession.numlock.enable = true;
}
