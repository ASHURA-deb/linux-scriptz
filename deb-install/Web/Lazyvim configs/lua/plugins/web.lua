return {
  -- HTML, CSS, JavaScript enhancements
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact" },
  },

  -- Tailwind CSS integration
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "tailwindcss" }
    }
  },

  -- Auto-rename HTML tags
  {
    "windwp/nvim-ts-autotag",
    config = true,
  },
}

























