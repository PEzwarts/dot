return {
  {
    "Stianlyng/neoranger.nvim",

    config = function()
      require("neoranger").setup({
        width = 1,
        height = 1.0,

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
