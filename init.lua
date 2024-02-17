vim.o.expandtab=true
vim.o.tabstop=2
vim.o.softtabspot=2
vim.o.shiftwidth=2

vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('v', 'jk', '<Esc>', { noremap = true })
vim.o.number = true
vim.o.relativenumber = true
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
vim.opt.mouse = ""
