-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
return {
  n = {
    -- File tree toggle
    ["<leader>e"] = { "<cmd>NvimTreeToggle<CR>", desc = "File Explorer" },

    -- Telescope fuzzy finder
    ["<leader>ff"] = { "<cmd>Telescope find_files<CR>", desc = "Find Files" },
    ["<leader>fg"] = { "<cmd>Telescope live_grep<CR>", desc = "Grep Files" },
    ["<leader>fb"] = { "<cmd>Telescope buffers<CR>", desc = "Find Buffers" },

    -- Split navigation
    ["<C-h>"] = { "<C-w>h", desc = "Window left" },
    ["<C-j>"] = { "<C-w>j", desc = "Window down" },
    ["<C-k>"] = { "<C-w>k", desc = "Window up" },
    ["<C-l>"] = { "<C-w>l", desc = "Window right" },
  },
}
