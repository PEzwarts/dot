return {
  {
    "Stianlyng/neoranger.nvim",

    config = function()
      require("neoranger").setup({
        width = 1,
        height = 0.96,

        border = "solid"
      })
    end
  }

  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --
  --   opts = {
  --     enabled = true,
  --
  --     filesystem = {
  --       filtered_items = {
  --         visible = true
  --       }
  --     }
  --   }
  -- }
}
