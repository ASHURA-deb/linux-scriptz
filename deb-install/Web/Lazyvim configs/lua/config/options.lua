-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Clear any existing line number settings
vim.opt.number = false
vim.opt.relativenumber = false

-- Reset to defaults
vim.opt.number = true
vim.opt.relativenumber = true

-- Force refresh
vim.cmd("redraw!")

return {}
