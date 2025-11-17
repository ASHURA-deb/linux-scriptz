return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    -- Use a wrapper approach for Windows paths with spaces
    opts.formatters = opts.formatters or {}
    opts.formatters.stylua = {
      command = "cmd",
      args = { "/c", '"C:\\Users\\USER PC\\AppData\\Local\\nvim-data\\mason\\bin\\stylua.CMD"' },
    }
    return opts
  end,
}

























