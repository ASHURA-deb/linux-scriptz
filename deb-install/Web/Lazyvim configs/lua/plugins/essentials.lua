return {
  -- File tree
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        width = 35,
      },
      filters = {
        dotfiles = false,
      },
    },
  },

  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = "auto", -- Will adapt to your colorscheme
      },
    },
  },

  -- Which-key (shows available keybindings)
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("which-key").setup()
    end,
  },

  -- Auto-closing brackets, quotes, etc.
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
}























