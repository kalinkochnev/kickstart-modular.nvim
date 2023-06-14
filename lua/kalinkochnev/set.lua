vim.opt.guicursor = "" -- when in insert mode cursor is a vertical bar

vim.opt.nu = true
vim.opt.relativenumber = true -- line numbers are relative for easier nav

vim.opt.tabstop = 4 -- four spaces is a tab
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false -- No line wrapping

-- These settings are so undos are persisted for a long time in this dir
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false -- search highlights do not stay on
vim.opt.incsearch = true -- searches are incremental

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

