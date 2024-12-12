{
  global,
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.stylix.nixosModules.stylix
  ];

  stylix = {
    enable = true;
    image = ../../../wallpaper/si_ku.jpg;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/${global.theme}.yaml";
    fonts = {
      sizes = {
        applications = 10;
        terminal = 15;
      };
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMonoNL Nerd Font";
      };
    };
    cursor = {
      name = "Breeze";
      package = pkgs.runCommand "moveUp" {} ''
        mkdir -p $out/share/icons
        ln -s ${pkgs.fetchzip {
          url = "https://download.kde.org/unstable/plasma/5.93.0/breeze-5.93.0.tar.xz";
          hash = "sha256-Vela7hYBE3ub00hI52RpvrrFCTSYVWmGzzxFoux3MNQ=";
        }}/cursors/Breeze/Breeze $out/share/icons/Breeze
      '';
      size = 24;
    };
    opacity.terminal = 0.85;
    targets = {
      grub.enable = false;
      spicetify.enable = false;
    };
  };
}
