local path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(path) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    path,
  })
end

vim.opt.rtp:prepend(path)

require("lazy").setup({
  { "LazyVim/LazyVim", import = "lazyvim.plugins" },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { import = "plugins" },
})
