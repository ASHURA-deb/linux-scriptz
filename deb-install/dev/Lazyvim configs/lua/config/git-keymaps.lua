return {
  n = {
    -- Git status
    ["<leader>gs"] = { "<cmd>Git<CR>", desc = "Git Status" },
    
    -- Git blame toggle
    ["<leader>gb"] = { "<cmd>GitBlameToggle<CR>", desc = "Toggle Git Blame" },
    
    -- Git diff
    ["<leader>gd"] = { "<cmd>Gitsigns diffthis<CR>", desc = "Git Diff" },
    
    -- Stage hunk
    ["<leader>gh"] = { "<cmd>Gitsigns stage_hunk<CR>", desc = "Stage Hunk" },
    
    -- GitHub issues (if using octo.nvim)
    ["<leader>gi"] = { "<cmd>Octo issue list<CR>", desc = "GitHub Issues" },
    
    -- GitHub PRs
    ["<leader>gp"] = { "<cmd>Octo pr list<CR>", desc = "GitHub PRs" },
  },
}
