return {
  {
    "shortcuts/no-neck-pain.nvim",

    config = function()
      require("no-neck-pain").setup({
        width = 150,

        autocmds = {
          enableOnTabEnter = true,
          -- enableOnVimEnter = true,
        },

        callbacks = {
          postEnable = function()
            local buf = vim.api.nvim_get_current_buf()

            if buf == "TelescopePrompt" or "terminal" then
              vim.cmd(":set nonumber")
              vim.cmd(":set nocursorline")
            else
              vim.cmd(":set number")
              vim.cmd(":set cursorline")
            end
          end,
        },
      })
    end
  }
}
