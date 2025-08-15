require("config.lazy")

vim.cmd(":set nohidden")

-- vim.api.nvim_create_autocmd("User", {
--   pattern = "DirChanged",
--   callback = function()
--     require("neo-tree.sources.filesystem.commands").refresh(require("neo-tree.sources.manager").get_state("filesystem"))
--   end,
-- })

vim.api.nvim_create_autocmd("User", {
  pattern = "SessionLoadPost",
  callback = function()
    vim.cmd(":Neotree")
  end,
})
