local keymap = vim.keymap
local opts = { remap = true, silent = true }

-- Neotree

keymap.set({ "n", "i", "v" }, "<D-z>", "<esc><cmd>:Neotree toggle position=current<cr>", opts)

-- Save file

-- keymap.set({ "n", "i", "v" }, "<D-c>", "<esc><cmd>:w<cr>", opts)

-- Close an buffer

keymap.set({ "n", "i", "v" }, "<D-d>", "<esc><leader>bd<cr>", opts)

-- Move around buffers

keymap.set({ "n", "i", "v" }, "<D-Left>", "<esc><cmd>:bp<cr>", opts)
keymap.set({ "n", "i", "v" }, "<D-Right>", "<esc><cmd>:bn<cr>", opts)

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

keymap.set("n", "<D-c>", "i", opts)
keymap.set("i", "<D-c>", "<esc>", opts)
keymap.set("v", "<D-c>", "i", opts)

-- Terminal

keymap.set("t", "<S-Up>", [[<C-\><C-n><S-Up>]], opts)
keymap.set("t", "<D-/>", [[<C-\><C-n>/]], opts)
keymap.set({ "t", "n" }, "<S-bs>", "<C-bs>", opts)

keymap.set("n", "<cr>", "a", opts)

if vim.g.term == true then
  if vim.g.write == false then
    keymap.del({ "n", "i", "v", "t" }, "<D-x>")
  else
    vim.cmd(":NeovimProjectDiscover")
    keymap.set({"n", "i", "v", "t"}, "<D-x>", "<cmd>:MarkdownPreview<cr>", opts)
  end
else
  vim.cmd(":NeovimProjectDiscover")
  keymap.set({"n", "i", "v", "t"}, "<D-x>", "<cmd>:ToggleTerm toggle direction=tab<cr>", opts)
end

-- True <-> False

-- keymap.set({ "n", "i", "v" }, "<A->", function ()
--   require("nvim-toggler").toggle()
-- end, opts)

-- Increment & decrement

keymap.set({ "n", "i", "v" }, "<D-Shift>Up", function ()
  require("dial.map").manipulate("increment", "normal")
end, opts)

keymap.set({ "n", "i", "v" }, "<D-Shift>Down", function ()
  require("dial.map").manipulate("decrement", "normal")
end, opts)

-- Annoying

vim.keymap.set({ "n", "i", "v" }, "qq", "", opts)
vim.keymap.set({ "n", "i", "v" }, "<D-r>", "", opts)
