return {
  {
    "Stianlyng/neoranger.nvim",

    config = function()
      require("neoranger").setup({
        width = 1,
        height = 1,

        -- choosefile_path = "/tmp/ranger_file_path",
        -- servername_path = "/tmp/nvim_servername",
        border = "solid"
      })
    end
  },

  {
    "nvim-neo-tree/neo-tree.nvim",

    opts = {
      enabled = true,

      filesystem = {
        filtered_items = {
          visible = true
        }
      }
    }
  }
}
