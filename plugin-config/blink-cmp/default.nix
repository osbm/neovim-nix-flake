{ pkgs, ... }: {
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

      fuzzy = {
        prebuilt_binaries = {
          download = false;
          force_version = "v${pkgs.vimPlugins.blink-cmp.version}";
        };
      };

      snippets = {
        preset = "luasnip";
      };

      sources = {
        default = [
          "buffer"
          "copilot"
          "dictionary"
          "git"
          "lazydev"
          "lsp"
          "path"
          "ripgrep"
          "snippets"
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
          buffer = {
            name = "Buffer";
            module = "blink.cmp.sources.buffer";
          };
          copilot = {
            name = "copilot";
            module = "blink-copilot";
            score_offset = 100;
            async = true;

            opts = {
              max_completions = 3;
              max_attempts = 4;
              kind = "Copilot";
              debounce = 750;
              auto_refresh = {
                backward = true;
                forward = true;
              };
            };
          };
          dictionary = {
            module = "blink-cmp-dictionary";
            name = "Dict";
            score_offset = 100;
            min_keyword_length = 3;
            opts = { };
          };
          git = {
            module = "blink-cmp-git";
            name = "git";
            score_offset = 100;
            opts = {
              commit = { };
              git_centers = { git_hub = { }; };
            };
          };
          ripgrep = {
            async = true;
            module = "blink-ripgrep";
            name = "Ripgrep";
            score_offset = 100;
            opts = {
              prefix_min_len = 3;
              context_size = 5;
              max_filesize = "1M";
              project_root_marker = ".git";
              project_root_fallback = true;
              search_casing = "--ignore-case";
              additional_rg_options = { };
              fallback_to_regex_highlighting = true;
              ignore_paths = { };
              additional_paths = { };
              debug = false;
            };
          };
          lazydev = {
            name = "LazyDev";
            module = "lazydev.integrations.blink";
            score_offset = 100;
          };
        };
      };

      signature = {
        enabled = true;
      };
    };
  };
}
