return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false,

    opts = {
      filesystem = {
        use_libuv_file_watcher = true,

        filtered_items = {
          hide_dotfiles = false,
        },
      },
    },
  },
}
