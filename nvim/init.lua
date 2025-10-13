require("config.lazy")

vim.api.nvim_create_autocmd("SessionLoadPost", {
  callback = function ()
    vim.cmd(":Neotree action=show position=left")
  end
})

-- vim.api.nvim_create_autocmd("BufDelete", {
--   callback = function ()
--     vim.cmd(":Neotree action=show position=current")
--     if vim.fn.bufnr("$") < 1 then
--     end
--   end
-- })
