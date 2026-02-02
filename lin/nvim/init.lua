require("config.lazy")

vim.cmd(":set number")
vim.cmd(":set cursorline")
vim.cmd(":Neominimap Enable")

if vim.g.neovide then
  require("smear_cursor").enabled = false
else
  require("smear_cursor").enabled = true
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
    -- local buf = vim.api.nvim_get_current_buf()
    --
    -- if not vim.bo[buf].buftype == "terminal" then
    --   vim.cmd(":set number")
    --   vim.cmd(":set cursorline")
    --   vim.cmd(":Neominimap Enable")
    -- end
  end
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd(":NoNeckPain")
  end
})
