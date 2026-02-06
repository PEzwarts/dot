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
      },
    },
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
