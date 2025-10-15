require("config.lazy")

vim.api.nvim_create_autocmd("SessionLoadPost", {
  callback = function ()
    -- vim.cmd(":TZAtaraxis")
  end
})

vim.api.nvim_create_autocmd("BufDelete", {
  callback = function ()
    if vim.fn.bufnr("$") < 1 then
      vim.cmd(":Neotree action=show position=current")
    end
  end
})
