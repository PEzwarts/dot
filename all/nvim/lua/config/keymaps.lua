local keymap = vim.keymap
local opts = { remap = true, silent = true }

-- Neotree

-- keymap.set({ "n", "i", "v" }, "<D-c>", "<esc><cmd>:Neotree toggle position=current<cr>", opts)
-- keymap.set({ "n", "i", "v" }, "<D-c>", "<esc><cmd>:wincmd w<cr>", opts)

keymap.set({ "n", "i", "v" }, "<D-c>", function()
  vim.cmd(":stopinsert")
  vim.cmd(":wincmd w")
  require("neo-tree.sources.filesystem.commands").refresh(require("neo-tree.sources.manager").get_state("filesystem"))
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
  vim.cmd(":bp")
end, opts)

keymap.set({ "n", "i", "v" }, "<D-Right>", function()
  vim.cmd(":bn")
end, opts)

-- Select all

keymap.set({ "n", "i", "v" }, "<D-s>", "<esc>gg<S-v>G", opts)

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

if vim.g.term == true then
  if vim.g.write == false then
    keymap.del({ "n", "i", "v", "t" }, "<D-x>")
  else
    vim.cmd(":NeovimProjectDiscover")

    keymap.set({ "n", "i", "v", "t" }, "<D-x>", "<cmd>:MarkdownPreview<cr>", opts)
  end
else
  vim.cmd(":NeovimProjectDiscover")

  keymap.set({ "n", "i", "v", "t" }, "<D-x>", function()
    vim.cmd(":ToggleTerm")
    require("neo-tree.sources.filesystem.commands").refresh(require("neo-tree.sources.manager").get_state("filesystem"))
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
