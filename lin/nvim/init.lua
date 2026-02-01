require("config.lazy")

-- vim.cmd(":NoNeckPain")

-- local wins = vim.api.nvim_list_wins()
--
-- if #wins >= 2 then
--     local win = wins[2]
--     local buf = vim.api.nvim_win_get_buf(win)
--     local width = vim.api.nvim_win_get_width(buf)
--     vim.cmd(":FloatermNew --width=" .. width .. " --height=1.1")
-- else
--   local width = vim.api.nvim_win_get_width(0)
--   vim.cmd(":FloatermNew --width=" .. width .. " --height=1.1")
-- end

-- vim.cmd(":FloatermNew --width=0.44 --height=1.1")
-- vim.cmd(":startinsert!")

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
    -- local wins = vim.api.nvim_list_wins()

    -- vim.cmd(":NoNeckPain")
    vim.cmd(":set number")
    vim.cmd(":set cursorline")
    vim.cmd(":Neominimap Enable")

    vim.cmd(":FloatermNew --width=1.0 --height=1.1 --silent")

    -- if #wins >= 2 then
    -- else
    --   vim.cmd(":FloatermUpdate --width=1.0 --height=1.1 --silent")
    -- end

    keymap.set({ "n", "i", "v", "t" }, "<A-c>", function()
      -- require("neoranger").toggleFloat()

      vim.cmd(":Neotree toggle position=current")
    end, opts)

    keymap.set({ "n", "i", "v", "t" }, "<A-x>", function()
      -- local buf = vim.api.nvim_get_current_buf()

      -- if vim.bo[buf].buftype == "terminal" then
      --   if #wins >= 2 then
      --     vim.cmd(":FloatermUpdate --width=0.44 --height=1.1 --silent")
      --   else
      --     vim.cmd(":FloatermUpdate --width=1.0 --height=1.1 --silent")
      --   end
      -- end

      vim.cmd(":FloatermToggle")
    end, opts)
  end
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- vim.cmd(":NoNeckPain")

    vim.cmd(":FloatermNew --width=1.0 --height=1.1")

    -- vim.cmd(":FloatermNew --width=1.0 --height=1.1")
    -- local wins = vim.api.nvim_list_wins()
    -- local buf = vim.api.nvim_get_current_buf()
    -- if vim.bo[buf].buftype == "terminal" then
    --   if #wins >= 2 then
    --       vim.cmd(":FloatermNew --width=0.44 --height=1.1")
    --   else
    --   end
    -- end

    vim.cmd(":startinsert")
  end
})

-- vim.api.nvim_create_autocmd("VimResized", {
--   callback = function()
--     local wins = vim.api.nvim_list_wins()
--     local buf = vim.api.nvim_get_current_buf()
--
--     if vim.bo[buf].buftype == "terminal" then
--       if #wins >= 2 then
--           vim.cmd(":FloatermUpdate --width=0.44 --height=1.1 --silent")
--       else
--         vim.cmd(":FloatermUpdate --width=1.0 --height=1.1 --silent")
--       end
--     end
--   end
-- })
