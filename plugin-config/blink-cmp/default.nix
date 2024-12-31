{ ... }: {
  blink-cmp = {
    enable = true;


    settings = {
      appearance = {
        # Blink does not expose its default kind icons so you must copy them all (or set your custom ones) and add Copilot
        kind_icons = {
          Class = "󱡠";
          Color = "󰏘";
          Constant = "󰏿";
          Constructor = "󰒓";
          Copilot = "";
          Enum = "󰦨";
          EnumMember = "󰦨";
          Event = "󱐋";
          Field = "󰜢";
          File = "󰈔";
          Folder = "󰉋";
          Function = "󰊕";
          Interface = "󱡠";
          Keyword = "󰻾";
          Method = "󰊕";
          Module = "󰅩";
          Operator = "󰪚";
          Property = "󰖷";
          Reference = "󰬲";
          Snippet = "󱄽";
          Struct = "󱡠";
          Text = "󰉿";
          TypeParameter = "󰬛";
          Unit = "󰪚";
          Value = "󰦨";
          Variable = "󰆦";
        };
      };

      completion = {
        accept = {
          auto_brackets = {
            enabled = false;
          };
        };

        documentation = {
          auto_show = true;
          auto_show_delay_ms = 200;
        };

        ghost_text = {
          enabled = true;
        };
      };

      sources = {
        default = [
          "lsp"
          "path"
          "snippets"
          "buffer"
          "copilot"
        ];

        providers = {
          lsp = {
            name = "LSP";
            module = "blink.cmp.sources.lsp";
            async = false;
            enabled = true;
            max_items = null;
            min_keyword_length = 0;
            override = null;
            score_offset = 0;
            should_show_items = true;
            timeout_ms = 2000;

            fallbacks = [
              "buffer"
            ];
          };
          path = {
            name = "Path";
            module = "blink.cmp.sources.path";
            score_offset = 3;

            fallbacks = [
              "buffer"
            ];

            opts = {
              label_trailing_slash = true;
              show_hidden_files_by_default = false;
              trailing_slash = false;
            };
          };
          snippets = {
            name = "Snippets";
            module = "blink.cmp.sources.snippets";

            opts = {
              friendly_snippets = true;
              extended_filetypes = [ ];
              ignored_filetypes = [ ];

              global_snippets = [
                "all"
              ];
            };
          };
          luasnip = {
            name = "Luasnip";
            module = "blink.cmp.sources.luasnip";

            opts = {
              use_show_condition = true;
              show_autosnippets = true;
            };
          };
          buffer = {
            name = "Buffer";
            module = "blink.cmp.sources.buffer";
          };
          copilot = {
            name = "copilot";
            module = "blink-cmp-copilot";
            score_offset = 100;
            async = true;

            transform_items.__raw = ''
              function(_, items)
                local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
                local kind_idx = #CompletionItemKind + 1
                CompletionItemKind[kind_idx] = "Copilot"
                for _, item in ipairs(items) do
                  item.kind = kind_idx
                end
                return items
              end
            '';
          };
        };
      };

      signature = {
        enabled = true;
      };
    };
  };
}
