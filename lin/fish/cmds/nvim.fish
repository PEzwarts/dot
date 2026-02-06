function v
  nvr --remote-send "<cmd>:lua base()<cr>"
  nvr --remote-send "<C-\><C-n><cmd>:ToggleTerm<cr>"
  nvr --remote-send "<cmd>:NeovimProjectDiscover<cr>"
  nvr --remote-send "<cmd>:lua binds()<cr>"
end
