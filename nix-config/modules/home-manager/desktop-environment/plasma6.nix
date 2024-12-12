{pkgs, ...}: {
  home.packages = [
    pkgs.kdePackages.krohnkite
  ];

  programs.plasma = {
    enable = true;

    kscreenlocker.timeout = 30;

    kwin = {
      effects.desktopSwitching.animation = "slide";
      tiling.padding = 4;
      virtualDesktops = {
        number = 4;
        rows = 2;
      };
    };

    window-rules = [
      {
        description = "Global";
        match = {
          window-class = {
            value = ".*";
            type = "regex";
          };
        };
        apply = {
          minsize = {
            value = "1,1";
            apply = "force";
          };
          noborder = {
            value = true;
            apply = "force";
          };
        };
      }
    ];

    configFile."kwinrc" = {
      "Effect-slide" = {
        "HorizontalGap" = 0;
        "SlideBackground" = false;
        "VerticalGap" = 0;
      };
      "Script-krohnkite" = {
        "screenGapBottom" = 12;
        "screenGapLeft" = 12;
        "screenGapRight" = 12;
        "screenGapTop" = 12;
        "tileLayoutGap" = 12;
      };
      "Plugins"."krohnkiteEnabled" = true;
      "Windows" = {
        "DelayFocusInterval" = 0;
        "FocusPolicy" = "FocusFollowsMouse";
      };
      "Wayland"."InputMethod" = "/run/current-system/sw/share/applications/fcitx5-wayland-launcher.desktop";
      "Xwayland"."Scale" = 1; # why is this not working :(
    };

    hotkeys.commands = {
      "rofimoji" = {
        name = "Launch rofimoji";
        key = "Meta+R";
        # command = ''rofi -modi "emoji:rofimoji" -show'';
        command = "rofimoji";
      };
    };

    panels = [{hiding = "autohide";}];

    shortcuts = {
      kwin = {
        "Switch One Desktop Down" = "Meta+J";
        "Switch One Desktop Up" = "Meta+K";
        "Switch One Desktop to the Left" = "Meta+H";
        "Switch One Desktop to the Right" = "Meta+L";
        "Window One Desktop Down" = "Meta+Ctrl+Shift+J";
        "Window One Desktop Up" = "Meta+Ctrl+Shift+K";
        "Window One Desktop to the Left" = "Meta+Ctrl+Shift+H";
        "Window One Desktop to the Right" = "Meta+Ctrl+Shift+L";
        "Window Close" = "Meta+Shift+Q";
      };
    };

    workspace.clickItemTo = "select";
  };
}
