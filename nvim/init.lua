require("config.lazy")

vim.api.nvim_create_autocmd("User", {
  pattern = "SessionLoadPost",

  callback = function ()
    vim.cmd(":Neotree action=show position=current")
  end
})
