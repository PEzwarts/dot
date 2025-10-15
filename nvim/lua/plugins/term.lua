return {
  {
    "akinsho/toggleterm.nvim",

    opts = {
      direction = "tab",

      float_opts = {
        width = 120,
        height = vim.api.nvim_win_get_height(0)
      }
    }
  }
}
