require("config.lazy")

vim.cmd(":set nonumber")
vim.cmd(":set nocursorline")

vim.cmd(":NoNeckPain")

vim.api.nvim_create_autocmd("SessionLoadPost", {
  callback = function()
    vim.cmd(":set number")
    vim.cmd(":set cursorline")
  end
})
