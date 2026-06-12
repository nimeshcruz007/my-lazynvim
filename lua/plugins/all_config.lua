return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            typescript = {
              inlayHints = {
                parameterNames = { enabled = "none" },
                parameterTypes = { enabled = false },
                variableTypes = { enabled = false },
                propertyDeclarationTypes = { enabled = false },
                functionLikeReturnTypes = { enabled = false },
                enumMemberValues = { enabled = false },
              },
            },
            javascript = {
              inlayHints = {
                parameterNames = { enabled = "none" },
                parameterTypes = { enabled = false },
                variableTypes = { enabled = false },
                propertyDeclarationTypes = { enabled = false },
                functionLikeReturnTypes = { enabled = false },
                enumMemberValues = { enabled = false },
              },
            },
          },
        },
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      matcher = {
        fuzzy = true,
        smartcase = true,
        ignorecase = true,
      },
      picker = {
        exclude = { "node_modules" },
        sources = {
          explorer = {
            actions = {
              smart_open = function(picker, item)
                if not item.dir then
                  local ok = picker:action({ "pick_win", "jump" })
                  if ok then
                    return
                  end
                end
                picker:action({ "confirm" })
              end,
            },
            win = {
              list = {
                keys = {
                  ["O"] = { { "smart_open" }, mode = { "n", "i" } },
                },
              },
            },
          },
        },
      },
    },
  },

  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",
        ["<Tab>"] = { "accept", "fallback" },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier", "eslint_d" },
        typescriptreact = { "prettier", "eslint_d" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        markdown = { "prettier" },
        yaml = { "prettier" },
      },
      -- format_on_save = {
      --   timeout_ms = 500,
      --   lsp_fallback = true, -- fallback to LSP if prettier not available
      -- },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            { "<leader>dl", vim.diagnostic.open_float, desc = "Code Action", has = "codeAction" },
          },
        },
      },
    },
  },
}
