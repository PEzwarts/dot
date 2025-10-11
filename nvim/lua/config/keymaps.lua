-- Move around in neo-tree in normal mode

local keymap = vim.keymap
local opts = { remap = true, silent = true }

keymap.set({ "n", "i", "v" }, "<D-Down>", "<esc><cmd>:Neotree toggle position=float<cr>", opts)

-- vim.keymap.set({ "n", "i", "v" }, "<D-Left>", "<esc><C-h>", { remap = true })
-- vim.keymap.set({ "n", "i", "v" }, "<D-Right>", "<esc><C-l>", { remap = true })
-- vim.keymap.set({ "n", "i", "v" }, "<D-Up>", "<esc><C-i>", { remap = true })
-- vim.keymap.set({ "n", "i", "v" }, "<D-Down>", "<esc><C-k>", { remap = true })

-- Save file

keymap.set({ "n", "i", "v" }, "<D-c>", "<esc><cmd>:w<cr>", opts)

-- Close an buffer

keymap.set({ "n", "i", "v" }, "<D-d>", "<esc><leader>bd<cr>", opts)

-- Move around buffers

keymap.set({ "n", "i", "v" }, "<D-Left>", "<esc><cmd>:bp<cr>", opts)
keymap.set({ "n", "i", "v" }, "<D-Right>", "<esc><cmd>:bn<cr>", opts)
keymap.set({ "n", "i", "v" }, "<D-Up>", "<esc><cmd>:bn<cr>", opts)

-- Select all

keymap.set({ "n", "i", "v" }, "<D-s>", "<esc>gg<S-v>G", opts)

-- Move an line or char

keymap.set({ "n", "i" }, "<A-Up>", "<esc>:MoveLine(-1)<cr>", opts)
keymap.set({ "n", "i" }, "<A-Down>", "<esc>:MoveLine(1)<cr>", opts)

keymap.set("v", "<A-Up>", ":MoveBlock(-1)<cr>", opts)
keymap.set("v", "<A-Down>", ":MoveBlock(1)<cr>", opts)

-- Delete word

-- keymap.set({ "n" }, "<S-bs>", "caw", opts)

-- Switch between modes

keymap.set("n", "<D-z>", "i", opts)
keymap.set("i", "<D-z>", "<esc>", opts)
keymap.set("v", "<D-z>", "i", opts)

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

-- Increment & decrement

-- keymap.set({ "n", "i", "v" }, "<A-Up>", function ()
--   require("dial.map").manipulate("increment", "normal")
-- end, opts)
--
-- keymap.set({ "n", "i", "v" }, "<A-Down>", function ()
--   require("dial.map").manipulate("decrement", "normal")
-- end, opts)

-- Annoying

vim.keymap.set({ "n", "i", "v" }, "qq", "", opts)
vim.keymap.set({ "n", "i", "v" }, "<D-r>", "", opts)
