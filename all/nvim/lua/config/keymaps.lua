local keymap = vim.keymap
local opts = { remap = true, silent = true }

-- Fuzzy

keymap.set({ "n", "i", "v" }, "<D-s>", "<esc><cmd>:Telescope fd<cr>", opts)

-- Neotree

keymap.set({ "n", "i", "v" }, "<D-c>", function()
  require("ranger-nvim").open()
  -- vim.cmd(":Neotree toggle position=float")
end, opts)

-- keymap.set({ "n", "i", "v" }, "<D-c>", function()
--   vim.cmd(":Neotree toggle position=current")
--   vim.cmd(":stopinsert")
--   vim.cmd(":wincmd w")
-- end, opts)

-- Close an buffer

keymap.set({ "n", "i", "v" }, "<D-d>", "<esc><leader>bd<cr><esc>", opts)

-- Move around buffers

keymap.set({ "n", "i", "v" }, "<D-Left>", function()
  vim.cmd(":w")
  vim.cmd(":bp")
end, opts)

keymap.set({ "n", "i", "v" }, "<D-Right>", function()
  vim.cmd(":w")
  vim.cmd(":bn")
end, opts)

-- Select all

keymap.set({ "n", "i", "v" }, "<D-a>", "<esc>gg<S-v>G", opts)

-- Move an line or char

keymap.set({ "n", "i" }, "<D-Up>", "<esc>:MoveLine(-1)<cr>", opts)
keymap.set({ "n", "i" }, "<D-Down>", "<esc>:MoveLine(1)<cr>", opts)

keymap.set("v", "<D-Up>", ":MoveBlock(-1)<cr>", opts)
keymap.set("v", "<D-Down>", ":MoveBlock(1)<cr>", opts)

-- Delete word

-- keymap.set({ "n" }, "<S-bs>", "caw", opts)

-- Switch between modes

keymap.set("n", "<D-z>", "<esc>i", opts)
keymap.set("i", "<D-z>", "<esc>", opts)
keymap.set("v", "<D-z>", "<esc>i", opts)

-- Terminal

keymap.set("t", "<S-Up>", [[<C-\><C-n><S-Up>]], opts)
keymap.set("t", "<S-Down>", [[<C-\><C-n>]], opts)

keymap.set("t", "<D-/>", [[<C-\><C-n>/]], opts)
keymap.set({ "t", "n" }, "<S-bs>", "<C-bs>", opts)

keymap.set("n", "<cr>", "<esc>a", opts)

if vim.g.term == false then
  vim.cmd(":NeovimProjectDiscover")

  keymap.set({ "n", "i", "v", "t" }, "<D-x>", function()
    vim.cmd(":ToggleTerm")
    -- vim.cmd(":NoNeckPain")
    -- vim.cmd(":startinsert")
  end, opts)
end

keymap.set({ "n", "i", "v" }, "<A-Up>", function()
  require("dial.map").manipulate("increment", "normal")
end, opts)

keymap.set({ "n", "i", "v" }, "<A-Down>", function()
  require("dial.map").manipulate("decrement", "normal")
end, opts)

-- Annoying

vim.keymap.set({ "n", "i", "v" }, "qq", "", opts)
vim.keymap.set({ "n", "i", "v" }, "<D-r>", "", opts)
