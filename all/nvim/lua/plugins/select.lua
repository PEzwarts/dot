return {
  {
    "coffebar/neovim-project",

    opts = {
      last_session_on_startup = false,

      picker = {
        type = "snacks",
      },

      projects = {
        "~/*",
        "/run/media/overlord/*",
      },

      session_manager_opts = {
        "~/*",
        "/run/media/overlord/*"
      }
    },

    dependencies = {
      { "Shatur/neovim-session-manager" },
    }
  },
}
