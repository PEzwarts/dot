require("config.lazy")

vim.cmd(":set nohidden")

vim.g.autoformat = true
vim.g.neovide_opacity = 0.8
vim.g.neovide_scale_factor = 0.6
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_scroll_animation_length = 0.1

vim.g.term = true
vim.g.write = false

vim.api.nvim_create_autocmd("User", {
  pattern = "SessionLoadPost",
  callback = function()
    vim.cmd(":Neotree")
  end,
})
