require("config.lazy")

-- vim.cmd(":ToggleTerm")
-- vim.cmd(":NoNeckPain")

if vim.g.neovide then
  require("smear_cursor").enabled = false
else
  require("smear_cursor").enabled = true
end

vim.api.nvim_create_autocmd("SessionLoadPost", {
  callback = function()
    local keymap = vim.keymap
    local opts = { remap = true, silent = true }

    -- vim.cmd(":ToggleTerm")
    -- vim.cmd(":NoNeckPain")

    -- vim.cmd(":set number")
    -- vim.cmd(":set cursorline")
    -- vim.cmd(":Neominimap Enable")

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

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    -- local buf = vim.api.nvim_get_current_buf()
    --
    -- if not vim.bo[buf].buftype == "terminal" then
    --   vim.cmd(":set nonumber")
    --   vim.cmd(":set nocursorline")
    --   vim.cmd(":Neominimap Disable")
    -- end
  end
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- vim.cmd(":set nonumber")
    vim.cmd(":set nocursorline")
    -- vim.cmd(":Neominimap Disable")

    vim.cmd(":ToggleTerm")
    vim.cmd(":NoNeckPain")
  end
})
