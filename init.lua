require("config")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.linebreak = true
vim.opt.cursorline = true
vim.opt.mouse = 'a'
vim.opt.scrolloff = 10

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.inccommand = 'split'

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.keymap.set('i', 'jk', '<Esc>')
vim.cmd [[
	iabbrev @@ your@email.com
]]

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = '*.c',
    callback = function()
        vim.g.mapleader = " "
        vim.keymap.set('i', '(', '() {<Esc><Left><Left>i')
    end,
})
