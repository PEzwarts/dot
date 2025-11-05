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

      -- session_manager_opts = {
      --   autosave_ignore_dirs = {
      --     "~/*",
      --     "/run/media/overlord/*"
      --   }
      -- }
    },

    dependencies = {
      { "Shatur/neovim-session-manager" },
    }
  },
}
