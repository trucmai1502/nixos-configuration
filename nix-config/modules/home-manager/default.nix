{pkgs, ...}: {
  imports = [
    ./desktop-environment
    ./nixvim
    ./terminal
    ./touchegg.nix
    ./direnv.nix
    ./git.nix
    ./vscodium.nix
  ];

  home.packages = [
    pkgs.anki-bin
    pkgs.caprine
    pkgs.calibre
    pkgs.chromium
    pkgs.discord
    pkgs.evince
    pkgs.firefox
    pkgs.libreoffice-qt
    pkgs.mpv
    pkgs.obs-studio
    pkgs.obsidian
    pkgs.spotify
    pkgs.qbittorrent
    # pkgs.zen-browser

    pkgs.ani-cli
    pkgs.cachix
    pkgs.devenv
    pkgs.fastfetch
    pkgs.fd
    pkgs.ffmpeg
    pkgs.hyfetch
    pkgs.nix-tree
    pkgs.texliveFull
    pkgs.typst
    pkgs.unzip
    pkgs.unrar
    pkgs.gcc
    pkgs.wl-clipboard
    pkgs.yazi
    pkgs.zip
    pkgs.pfetch
    pkgs.tinymist
  ];
  programs.home-manager.enable = true;
  xsession.numlock.enable = true;
}
