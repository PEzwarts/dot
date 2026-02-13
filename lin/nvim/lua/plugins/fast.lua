return {
  {
    "pteroctopus/faster.nvim",

    opts = {},

    config = function()
      require("faster").setup({})
    end
  },

  {
    "zeioth/garbage-day.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
    },

    opts = {
      aggressive_mode = true,
    }
  },
}
