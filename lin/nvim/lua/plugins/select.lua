return {
  {
    "nvim-telescope/telescope.nvim",

    opts = {
      defaults = {
        layout_strategy = "horizontal",

        layout_config = {
          horizontal = {
            prompt_position = "bottom",

            width = function()
              return vim.api.nvim_win_get_width(0)
            end,

            height = { padding = 0 },
            preview_width = 0.4,
          },
        },

        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
          },
        },
      },
    },
  },

  {
    "nvim-telescope/telescope-fzf-native.nvim", build = "make",

    config = function()
      require("telescope").load_extension("fzf")
    end
  },

  {
    "coffebar/neovim-project",

    opts = {
      last_session_on_startup = false,

      picker = {
        type = "telescope",
      },

      projects = {
        "/run/media/admin/d0/*",
        "~/Desktop/*"
      },
    },

    dependencies = {
      { "Shatur/neovim-session-manager" },
    }
  }
}
