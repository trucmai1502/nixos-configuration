{pkgs, ...}: {
  programs.vscode = {
    	enable = true;
    	extensions = [
      		pkgs.vscode-extensions.ms-toolsai.jupyter
      		pkgs.vscode-extensions.ms-python.python
    		pkgs.vscode-extensions.vscodevim.vim
	];
	userSettings = {
    		"vim.vimrc.path" = "/home/trcmai/.vimrc";
    		"vim.vimrc.enable" = true;
    		"window.menuBarVisibility" = "toggle";
  	};
  };
}
