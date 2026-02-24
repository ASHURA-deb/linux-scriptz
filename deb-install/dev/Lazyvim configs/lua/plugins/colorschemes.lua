return {
  -- Gruvbox colorscheme
  { 
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
  },

  -- Solarized Osaka colorscheme
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
  },

  -- Meadow colorscheme
  {
    'kuznetsss/meadow.nvim',
    lazy = false,
    priority = 1000,
  },

  -- Tokyo Night colorscheme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },

  -- Everforest colorscheme
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("everforest").setup({})
    end,
  },
}