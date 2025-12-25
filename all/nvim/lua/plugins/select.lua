return {
  {
    "nvim-telescope/telescope.nvim",

    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            width = { padding = 120 },
            height = { padding = 5 },
            preview_width = 0.5,
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
