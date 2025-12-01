return {
  {
    "rcarriga/nvim-notify",

    opts = {
      level = 5,
      render = "minimal",
      stages = "static"
    }
  },

  -- {
  --   "code-biscuits/nvim-biscuits",
  --
  --   dependencies = { "nvim-treesitter/nvim-treesitter" },
  --
  --   config = function()
  --     require("nvim-biscuits").setup({
  --       default_config = {
  --         min_length = 5,
  --       }
  --     })
  --   end
  -- },

  {
    "neovim/nvim-lspconfig",

    config = function ()
      local settings = require("mason.settings")

      require("nvim-lspconfig.rust-analyzer").setup({
        ["rust-analyzer"] = {
          settings {
            cmd_env = {
              CARGO_TARGET_DIR = "/tmp/rust-analyzer"
            }
          }
        }
      })

      require("nvim-lspconfig.clangd").setup({
        ["clangd"] = {
          settings = {
            cmd = { "/usr/bin/clangd" },

            filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },

            root_dir = {
              root_pattern = {
                ".clangd",
                ".clang-tidy",
                ".clang-format",
                ".compile_commands.json",
                "compile_flags.txt",
                "configure.ac",
                ".git"
              }
            }
          }
        }
      })
    end,

    dependencies = {
      { "mason-org/mason.nvim" },
      { "mason-org/mason-lspconfig.nvim" }
    }
  },

  {
    "mason-org/mason.nvim",

    cmd = "Mason",
    keys = { "<cmd>:Mason<cr>" },
    build = { ":MasonUpdate" },
    opts_extend = { "ensured_installed" },
    opts = {
      ensured_installed = {
        "rust-analyzer",

        "clangd",
        "ast-grep",
        "codelldb",
        "cpptools",

        -- Vuln detectors.
        "trivy",
        "snyk",

        "rust-analyzer",

        "python-lsp-server",

        -- XML formatter.
        "lemminx",

        -- "lua-language-server",
        "stylua"
      },
    },

    config = function (_, opts)
      require("mason").setup(opts)

      local mason_reg = require("mason-registry")

      mason_reg.refresh(function ()
        for _, pkg in ipairs(opts.ensured_installed) do
          local select_pkg = mason_reg.get_package(pkg)

          if not select_pkg:is_installed() then
            select_pkg:install()
          end
        end
      end)
    end
  },
}
