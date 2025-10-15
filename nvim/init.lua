require("config.lazy")

vim.api.nvim_create_autocmd("SessionLoadPost", {
  callback = function ()
    if vim.api.nvim_win_get_width(0) > 300 then
      vim.cmd(":TZAtaraxis")
    end
  end
})

vim.api.nvim_create_autocmd("BufDelete", {
  callback = function ()
    if vim.fn.bufnr("$") < 1 then
      vim.cmd(":Neotree action=show position=current")
    end
  end
})
