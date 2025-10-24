return {
  {
    "coffebar/neovim-project",

    opts = {
      last_session_on_startup = false,

      projects = {
        "~/*",
        "/run/media/overlord/*",
      },

      picker = {
        type = "snacks",
      }
    },

    dependencies = {
      { "Shatur/neovim-session-manager" },
    }
  },

  {
    "stevearc/oil.nvim",

    opts = {}
  }
}
