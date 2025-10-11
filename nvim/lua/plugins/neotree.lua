return {
  {
    "nvim-neo-tree/neo-tree.nvim",

    opts = {
      enabled = false,

      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },

        window = {
          mappings = {
            ["<Right>"] = "open",
          }
        }
      },
    },
  },
}
