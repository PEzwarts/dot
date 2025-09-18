return {
  {
    "coffebar/neovim-project",
    lazy = false,

    opts = {
      last_session_on_startup = false,

      projects = {
        "~/*",
        "/run/media/overlord/*/*",
        "/run/media/overlord/*/*/*",
      },

      picker = {
        type = "picker",
      },
    },

    dependencies = {
      { "Shatur/neovim-session-manager" },
    },
  },
}
