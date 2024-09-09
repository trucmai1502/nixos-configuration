{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      ms-toolsai.jupyter
      ms-python.python
      vscodevim.vim
    ];
    userSettings = {
      "vim.vimrc.path" = "/home/trcmai/.vimrc";
      "vim.vimrc.enable" = true;
      "window.menuBarVisibility" = "toggle";
    };
  };
}
