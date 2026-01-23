vim.g.autoformat = false

vim.opt.autoindent = true
vim.opt.breakindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.confirm = false

vim.opt.hidden = true
vim.opt.swapfile = false

vim.opt.fillchars:append("vert: ")

-- vim.opt.laststatus = 0

vim.g.floaterm_borderchars = " "

vim.wo.relativenumber = false

if vim.g.neovide then
  vim.g.neovide_scale_factor = 0.65

  vim.g.neovide_cursor_animation_length = 0.02
  vim.g.neovide_scroll_animation_length = 0.06

  vim.g.neovide_position_animation_length = 0

  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_scroll_animation_far_lines = 0

  -- vim.g.neovide_padding_left = 700
  -- vim.g.neovide_padding_right = 700

  vim.g.neovide_cursor_trail_size = 0

  vim.g.neovide_confirm_quit = false
end
