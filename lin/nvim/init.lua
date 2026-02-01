require("config.lazy")

vim.cmd(":set nonumber")
vim.cmd(":set nocursorline")
vim.cmd(":Neominimap Disable")

if vim.g.neovide then
  require("smear_cursor").enabled = false
else
  require("smear_cursor").enabled = true
end

vim.api.nvim_create_autocmd("SessionLoadPost", {
  callback = function()
    local keymap = vim.keymap
    local opts = { remap = true, silent = true }

    -- vim.cmd(":NoNeckPain")
    vim.cmd(":set number")
    vim.cmd(":set cursorline")
    vim.cmd(":Neominimap Enable")

    keymap.set({ "n", "i", "v", "t" }, "<A-c>", function()
      require("neoranger").toggleFloat()

      -- vim.cmd(":Neotree toggle position=current")
    end, opts)

    -- vim.cmd(":FloatermNew --width=0.44 --height=1.0 --silent")

    keymap.set({ "n", "i", "v", "t" }, "<A-x>", function()
      vim.cmd(":ToggleTerm")
      -- vim.cmd(":NoNeckPain")
      vim.cmd(":startinsert")
    end, opts)
  end
})

-- vim.api.nvim_create_autocmd("VimResized", {
--   callback = function()
--     if vim.o.columns >= 170 then
--       vim.cmd(":FloatermUpdate --width=0.44 --height=1.0 --silent")
--     else
--       vim.cmd(":FloatermUpdate --width=1.0 --height=1.0 --silent")
--     end
--   end
-- })
