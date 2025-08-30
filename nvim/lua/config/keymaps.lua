-- Move around in neo-tree in normal mode.

vim.keymap.set({ "n", "i", "v" }, "<D-Left>", "<esc><C-h>", { remap = true })
-- vim.keymap.set({ "n", "i", "v" }, "<D-Left>", "<esc>:Neotree action=focus<CR>")

vim.keymap.set({ "n", "i", "v" }, "<D-Right>", "<esc><C-l>", { remap = true })
-- vim.keymap.set({ "n", "i", "v" }, "<D-Right>", "<esc>:Neotree action=close<CR>")

vim.keymap.set({ "n", "i", "v" }, "<D-Up>", "<esc><C-i>", { remap = true })
vim.keymap.set({ "n", "i", "v" }, "<D-Down>", "<esc><C-k>", { remap = true })

vim.keymap.set("t", "<S-Up>", [[<C-\><C-n><S-Up>]], { remap = true })
vim.keymap.set("n", "<cr>", "a", { remap = true })

-- Save file.

vim.keymap.set({ "n", "i", "v" }, "<D-c>", "<esc><cmd>:w<cr>", { remap = true })

-- Switch between buffers.

vim.keymap.set({ "n", "i", "v" }, "<D-z>", "<esc><cmd>:bn<cr>", { remap = true, silent = true })

-- Close an buffer.

vim.keymap.set({ "n", "i", "v" }, "<D-d>", "<esc><leader>bd<cr>", { remap = true })

-- Select all.

vim.keymap.set({ "n", "i", "v" }, "<D-s>", "<esc>gg<S-v>G", { remap = true })

-- Move an line or char.

vim.keymap.set({ "n", "i" }, "<D-Up>", "<esc>:MoveLine(-1)<cr>", { remap = true, silent = true })
vim.keymap.set({ "n", "i" }, "<D-Down>", "<esc>:MoveLine(1)<cr>", { remap = true, silent = true })

vim.keymap.set("v", "<D-Up>", ":MoveBlock(-1)<cr>", { remap = true, silent = true })
vim.keymap.set("v", "<D-Down>", ":MoveBlock(1)<cr>", { remap = true, silent = true })

-- Modes.

vim.keymap.set("n", "<D-a>", "i", { remap = true })
vim.keymap.set("i", "<D-a>", "<esc>", { remap = true })
vim.keymap.set("v", "<D-a>", "i", { remap = true })

-- Terminal.

vim.keymap.set({ "n", "i", "v", "t" }, "<D-x>", function()
  vim.cmd(":NeovimProjectDiscover")
  vim.keymap.del({ "n", "i", "v", "t" }, "<D-x>")
  vim.keymap.set({"n", "i", "v", "t"}, "<D-x>", "<cmd>:ToggleTerm toggle<cr>", {remap = true, silent = true})
end, { remap = false, silent = true })

-- Annoying. Just disable.

vim.keymap.set({ "n", "i", "v" }, "qq", "", { remap = true })
vim.keymap.set({ "n", "i", "v" }, "<D-r>", "", { remap = true })
