require("config.lazy")

vim.api.nvim_create_autocmd("SessionLoadPost", {
  callback = function()
    -- vim.cmd(":NoNeckPain")
  end
})

vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.cmd(":LazyFormat")
  end
})
