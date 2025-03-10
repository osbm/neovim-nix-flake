[
  {
    mode = "n";
    key = "gd";
    action = "<cmd>Lspsaga goto_definition<cr>";
    options = {
      desc = "Goto definition of highlighted item";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "gD";
    action = "<cmd>Lspsaga goto_type_definition<cr>";
    options = {
      desc = "Goto type definition of highlighted item";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "K";
    action = "<cmd>Lspsaga hover_doc<CR>";
    options = {
      desc = "Show docs for hovered item.";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>lc";
    action = "<cmd>Lspsaga code_action<cr>";
    options = {
      desc = "Code Action";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>lff";
    action = "<cmd>Lspsaga finder<cr>";
    options = {
      desc = "Finder";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>lfi";
    action = "<cmd>Lspsaga finder imp<cr>";
    options = {
      desc = "Find Implementation";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>lfI";
    action = "<cmd>Lspsaga incoming_calls<cr>";
    options = {
      desc = "Find Incoming Calls";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>lfo";
    action = "<cmd>Lspsaga outgoing_calls<cr>";
    options = {
      desc = "Find Outgoing Calls";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>ln";
    action = "<cmd>Navbuddy<cr>";
    options = {
      desc = "Navbuddy";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>lr";
    action = "<cmd>Lspsaga rename<cr>";
    options = {
      desc = "Rename";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>lpd";
    action = "<cmd>Lspsaga peek_definition<cr>";
    options = {
      desc = "Peek Definition";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>lpt";
    action = "<cmd>Lspsaga peek_type_definition<cr>";
    options = {
      desc = "Peek Type Definition";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>lbl";
    action = "<cmd>BaconList<cr>";
    options = {
      desc = "Bacon List";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>lbs";
    action = "<cmd>BaconShow<cr>";
    options = {
      desc = "Bacon Show";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>lo";
    action = "<cmd>Outline<cr>";
    options = {
      desc = "LSP Outline";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>lO";
    action = "<cmd>Outline!<cr>";
    options = {
      desc = "LSP Outline";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>ls";
    action = "<cmd>lua require('snacks').picker.lsp_symbols()<cr>";
    options = {
      desc = "LSP Symbols";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>lS";
    action = "<cmd>lua require('snacks').picker.lsp_workspace_symbols()<cr>";
    options = {
      desc = "LSP Workspace Symbols";
      silent = true;
    };
  }
]
