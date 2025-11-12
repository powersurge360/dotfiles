-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false
vim.cmd([[autocmd FileType ruby setlocal indentkeys-=.]])
vim.cmd([[autocmd FileType ruby setlocal indentkeys-=0{]])
vim.g.lazyvim_ruby_lsp = "solargraph"
