{
  programs.nixvim = {
    enable = true;
    clipboard.register = "unnamedplus";
    editorconfig.enable = true;
    keymaps = [
      {
        action = "<gv";
        key = "<";
        mode = "v";
        options = {
          noremap = true;
          silent = true;
          desc = "Indent left";
        };
      }
      {
        action = ">gv";
        key = ">";
        mode = "v";
        options = {
          noremap = true;
          silent = true;
          desc = "Indent right";
        };
      }
    ];
    opts = {
      cursorline = true;
      expandtab = true;
      foldlevel = 80;
      list = true;
      listchars = {
        tab = "󰌒 ";
        trail = "•";
        nbsp = "␣";
      };
      number = true;
      showbreak = "↪ ";
      signcolumn = "number";
      swapfile = false;
      shiftwidth = 2;
      tabstop = 2;
    };
    plugins = {
      comment.enable = true;
      illuminate.enable = true;
      lsp = {
        enable = true;
        servers = {
          clangd = {
            enable = true;
            cmd = ["clangd" "--fallback-style=microsoft" "--offset-encoding=utf-16"];
          };
          nil-ls.enable = true;
          pylsp.enable = true;
        };
      };
      lsp-format.enable = true;
      markdown-preview.enable = true;
      none-ls = {
        enable = true;
        sources = {
          formatting = {
            alejandra.enable = true;
            prettier.enable = true;
          };
        };
      };
      nvim-autopairs = {
        enable = true;
        settings.checkTs = true;
      };
      nvim-tree = {
        enable = true;
        openOnSetup = true;
        git.ignore = false;
      };
      toggleterm = {
        enable = true;
        settings = {
          direction = "vertical";
          size = ''
            function(term)
              if term.direction == "horizontal" then
                return vim.o.lines * 0.25
              elseif term.direction == "vertical" then
                return vim.o.columns * 0.5
              end
            end
          '';
        };
      };
      treesitter = {
        enable = true;
        folding = true;
        settings.indent.enable = true;
      };
      which-key.enable = true;
    };
  };
}
