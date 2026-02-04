require("config.lazy")

if vim.g.neovide then
  require("smear_cursor").enabled = false
  -- vim.cmd(":Neominimap Disable")
else
  require("smear_cursor").enabled = true
  -- vim.cmd(":Neominimap Enable")
end

vim.api.nvim_create_autocmd("SessionLoadPost", {
  callback = function()
    local keymap = vim.keymap
    local opts = { remap = true, silent = true }

    keymap.set({ "n", "i", "v" }, "<A-s>", "<esc><cmd>:NeovimProjectDiscover<cr>", opts)

    keymap.set({ "t" }, "<A-s>", function()
      vim.cmd(":ToggleTerm")
      vim.cmd(":NeovimProjectDiscover")
    end, opts)

    keymap.set({ "n", "i", "v", "t" }, "<A-c>", function()
      -- require("neoranger").toggleFloat()

      vim.cmd(":Neotree toggle position=current")
    end, opts)

    keymap.set({ "n", "i", "v", "t" }, "<A-x>", function()
      vim.cmd(":ToggleTerm")
      vim.cmd(":NoNeckPain")
      vim.cmd(":startinsert")
    end, opts)
  end
})

vim.api.nvim_create_autocmd("BufNew", {
  callback = function()
    if vim.bo.buftype == "terminal" then
      vim.cmd(":set nonumber")
      vim.cmd(":set nocursorline")
    else
      vim.cmd(":set number")
      vim.cmd(":set cursorline")
    end
  end
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd(":set nonumber")
    vim.cmd(":set nocursorline")
    
    vim.cmd(":NoNeckPain")
  end
})
