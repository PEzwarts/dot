return {
  {
    "akinsho/toggleterm.nvim",

    opts = {
      direction = "float",

      persist_size = false,

      float_opts = {
        width = vim.api.nvim_win_get_width(0),
        height = vim.api.nvim_win_get_height(0)
      }
    },
  },
}
