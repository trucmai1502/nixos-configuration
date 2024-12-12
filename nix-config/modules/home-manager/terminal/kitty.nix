{
  programs.kitty = {
    enable = true;
    environment.NIXPKGS_ALLOW_UNFREE = "1";
    keybindings = {
      "ctrl+shift+enter" = "launch --location=split";
      "ctrl+shift+h" = "move_window left";
      "ctrl+shift+l" = "move_window right";
      "ctrl+shift+k" = "move_window up";
      "ctrl+shift+j" = "move_window down";
    };
    settings = {
      confirm_os_window_close = 0;
      enabled_layouts = "splits";
      window_padding_width = 12;
    };
  };
}
