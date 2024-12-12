{pkgs, ...}: {
  imports = [
    ./desktop-environment
    ./nixvim
    ./terminal

    ./direnv.nix
    ./git.nix
    ./vscodium.nix
  ];

  home.packages = [
    pkgs.anki-bin
    pkgs.caprine
    pkgs.discord
    pkgs.firefox
    pkgs.libreoffice-qt
    pkgs.mpv
    pkgs.obs-studio
    pkgs.spotify
    # pkgs.zen-browser

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
    pkgs.wl-clipboard
    pkgs.yazi
    pkgs.zip
  ];
  programs.home-manager.enable = true;
  xsession.numlock.enable = true;
}
