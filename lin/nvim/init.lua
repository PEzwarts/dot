require("config.lazy")

-- vim.cmd(":set nonumber")
-- vim.cmd(":set nocursorline")
--
-- vim.cmd(":Neominimap Disable")

if vim.g.neovide then
  require("smear_cursor").enabled = false
else
  require("smear_cursor").enabled = true
end

-- vim.cmd(":NoNeckPain")

vim.api.nvim_create_autocmd("SessionLoadPost", {
  callback = function()
    local keymap = vim.keymap
    local opts = { remap = true, silent = true }

    vim.cmd(":set number")
    vim.cmd(":set cursorline")
    vim.cmd(":Neominimap Enable")

    keymap.set({ "n", "i", "v", "t" }, "<A-c>", function()
      vim.cmd(":Neotree toggle position=current")
    end, opts)

    keymap.set({ "n", "i", "v", "t" }, "<A-x>", function()
      vim.cmd(":ToggleTerm")
      -- vim.cmd(":NoNeckPain")
      vim.cmd(":startinsert")
    end, opts)
  end
})
