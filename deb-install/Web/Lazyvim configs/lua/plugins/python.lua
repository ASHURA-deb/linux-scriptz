return {
  -- Better Python syntax highlighting
  {
    "vim-python/python-syntax",
    ft = "python",
  },

  -- Python docstring generation
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
    opts = { snippet_engine = "luasnip" }
  },

  -- Virtual environments helper
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-telescope/telescope.nvim",
      "mfussenegger/nvim-dap-python"
    },
    opts = {
      name = { "venv", ".venv", "env", ".env" },
    },
  },
}

























