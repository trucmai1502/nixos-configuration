{
  programs.nixvim.keymaps = [
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
    {
      action = "<cmd>ToggleTerm<CR>";
      key = "<C-t>";
      mode = ["n" "t"];
      options = {
        noremap = true;
        desc = "Toggle terminal";
      };
    }
    {
      action = "<cmd>NvimTreeFindFileToggle<CR>";
      key = "<leader>e";
      mode = "n";
      options = {
        noremap = true;
        desc = "Toggle explorer";
      };
    }
    # Remap arrow keys in insert mode to <C-hjkl>
    {
      action = "<Left>";
      key = "<C-h>";
      mode = "i";
    }
    {
      action = "<Right>";
      key = "<C-l>";
      mode = "i";
    }
    {
      action = "<Up>";
      key = "<C-k>";
      mode = "i";
    }
    {
      action = "<Down>";
      key = "<C-j>";
      mode = "i";
    }
  ];
}
