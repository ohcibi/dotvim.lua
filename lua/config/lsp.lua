return function (use)
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require("nvim-treesitter.install").prefer_git = true
      require'nvim-treesitter.configs'.setup {
        context_commentstring = {
          enable = true,
        },
        ensure_installed = {
          -- Web Languages
          "javascript", "typescript",
          "html", "css", "regex",
          -- Web Framework Languages
          "glimmer", "svelte",
          -- Documentation Languages
          "markdown", "markdown_inline",
          "help",
          -- "comment", -- slow?
          "jsdoc",
          -- Configuration Languages
          "toml", "jsonc",
          "dockerfile",
          "lua", "vim",
          -- Scripting Languages
          "bash",
          "jq",
          -- Specifically for the treesitter AST
          "query",
          -- Utility Syntaxes
          "diff",
          "jq",
          "git_rebase", "gitcommit", "gitignore",
          "terraform"
        },
        ignore_install = {
          "json" -- jsonc is better
        },
        highlight = {
          enable = true,
        },
        rainbow = {
          enable = true,
          extended_mode = true,
        },
        incremental_selection = {
          enable = true
          keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "gnn",
          }
        }
      }
    end
  }
end
