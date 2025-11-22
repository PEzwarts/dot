return {
  { "nvim-telescope/telescope.nvim" },

  {
    "coffebar/neovim-project",

    opts = {
      last_session_on_startup = false,

      picker = {
        type = "telescope",
      },

      projects = {
        "/run/media/overlord/d0/*",
        "~/Desktop/*"
      },
    },

    dependencies = {
      { "Shatur/neovim-session-manager" },
    }
  },
}
