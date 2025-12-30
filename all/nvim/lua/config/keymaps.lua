local keymap = vim.keymap
local opts = { remap = true, silent = true }

-- Fuzzy

if vim.g.term == false then
  keymap.set({ "n", "i", "v" }, "<A-s>", "<esc><cmd>:NeovimProjectDiscover<cr>", opts)

  keymap.set({ "t" }, "<A-s>", function()
    vim.cmd(":ToggleTerm")
    vim.cmd(":NeovimProjectDiscover")
  end, opts)

  -- Neoranger
  keymap.set({ "n", "i", "v", "t" }, "<A-c>", function()
    require("neoranger").toggleFloat()

    -- vim.cmd(":Neotree toggle position=current")
  end, opts)
end

-- Close an buffer

keymap.set({ "n", "i", "v" }, "<A-d>", "<esc><leader>bd<cr><esc>", opts)

-- Move around buffers

keymap.set({ "n", "i", "v" }, "<A-Left>", function()
  -- vim.cmd(":w")
  vim.cmd(":bp")
end, opts)

keymap.set({ "n", "i", "v" }, "<A-Right>", function()
  -- vim.cmd(":w")
  vim.cmd(":bn")
end, opts)

-- Select all

keymap.set({ "n", "i", "v" }, "<A-a>", "<esc>gg<S-v>G", opts)

-- Move an line or char

keymap.set({ "n", "i" }, "<A-Up>", "<esc>:MoveLine(-1)<cr>", opts)
keymap.set({ "n", "i" }, "<A-Down>", "<esc>:MoveLine(1)<cr>", opts)

keymap.set("v", "<A-Up>", ":MoveBlock(-1)<cr>", opts)
keymap.set("v", "<A-Down>", ":MoveBlock(1)<cr>", opts)

-- Delete word

-- keymap.set({ "n" }, "<S-bs>", "caw", opts)

-- Switch between modes

keymap.set("n", "<A-z>", "<esc><esc>i", opts)
keymap.set("i", "<A-z>", "<esc><esc>", opts)
keymap.set("v", "<A-z>", "<esc><esc>i", opts)

-- Terminal

keymap.set("t", "<S-Up>", [[<C-\><C-n><S-Up>]], opts)
keymap.set("t", "<S-Down>", [[<C-\><C-n>]], opts)

keymap.set("t", "<A-/>", [[<C-\><C-n>/]], opts)
keymap.set({ "n", "t" }, "<S-bs>", "<C-bs>", opts)

keymap.set("n", "<cr>", "<esc>a", opts)

if vim.g.term == false then
  vim.cmd(":NeovimProjectDiscover")

  keymap.set({ "i" }, "<A-x>", function()
    vim.cmd(":stopinsert")
    vim.cmd(":ToggleTerm")
    vim.cmd(":NoNeckPain")
    vim.cmd(":startinsert")
  end, opts)

  keymap.set({ "n", "v", "t" }, "<A-x>", function()
    vim.cmd(":ToggleTerm")
    vim.cmd(":NoNeckPain")
    vim.cmd(":startinsert")
  end, opts)
end

-- keymap.set({ "n", "i", "v" }, "<A-Up>", function()
--   require("dial.map").manipulate("increment", "normal")
-- end, opts)
--
-- keymap.set({ "n", "i", "v" }, "<A-Down>", function()
--   require("dial.map").manipulate("decrement", "normal")
-- end, opts)

-- Annoying

vim.keymap.set({ "n", "i", "v" }, "qq", "", opts)
vim.keymap.set({ "n", "i", "v" }, "<D-r>", "", opts)
vim.keymap.set({ "n" }, "x", "", opts)
vim.keymap.set({ "n" }, "z", "", opts)
