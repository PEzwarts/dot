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

    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.rust_analyzer.setup({
        cmd_env = {
          CARGO_TARGET_DIR = "/tmp/rust-analyzer"
        }
      })

      lspconfig.clangd.setup({
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
        },

        single_file_support = true,
      })

      lspconfig.codelldb.setup({})
      lspconfig.ast_grep.setup({})
      lspconfig.cpptools.setup({})
      lspconfig.trivy.setup({})
      lspconfig.snyk.setup({})

      lspconfig.intelephense.setup({})
      lspconfig.phpactor.setup({})

      lspconfig.lua_language_server.setup({})
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

        "phpactor",

        "python-lsp-server",

        -- XML formatter.
        "lemminx",

        "lua-language-server",
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
