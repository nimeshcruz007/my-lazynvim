-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options herev
vim.opt.wrap = true
vim.opt.formatoptions:remove("c")
vim.opt.formatoptions:remove("r")
vim.opt.formatoptions:remove("o")
vim.opt.breakindent = true
vim.opt.breakindentopt = "shift:0"
vim.opt.autoindent = false
vim.opt.smartindent = false
vim.opt.linebreak = true
vim.opt.textwidth = 0
