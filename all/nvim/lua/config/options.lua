vim.g.autoformat = false
vim.opt.confirm = false

vim.wo.relativenumber = false

vim.g.neovide_scale_factor = 0.7

vim.g.neovide_cursor_animation_length = 0.02
vim.g.neovide_scroll_animation_length = 0.06

vim.g.neovide_position_animation_length = 0

vim.g.neovide_cursor_animate_in_insert_mode = false
vim.g.neovide_cursor_animate_command_line = false
vim.g.neovide_scroll_animation_far_lines = 0

if vim.api.nvim_win_get_width(0) < 190 then
  vim.g.neovide_padding_left = 500
  vim.g.neovide_padding_right = 500
else
  vim.g.neovide_padding_left = 0
  vim.g.neovide_padding_right = 0
end

vim.g.term = true
