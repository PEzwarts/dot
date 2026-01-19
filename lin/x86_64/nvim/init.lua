require("config.lazy")

-- vim.cmd(":set nonumber")
-- vim.cmd(":set nocursorline")
--
-- vim.cmd(":Neominimap Disable")

if vim.g.neovide then
  require("smear_cursor").enabled = false
else
  require("smear_cursor").enabled = true
end

-- vim.cmd(":NoNeckPain")

vim.api.nvim_create_autocmd("SessionLoadPost", {
  callback = function()
    vim.cmd(":set number")
    vim.cmd(":set cursorline")

    vim.cmd(":Neominimap Enable")
  end
})
