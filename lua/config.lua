local opts = { noremap=true, silent=true }

vim.cmd 'let mapleader = " "'

local function quickfix()
    vim.lsp.buf.code_action({
        filter = function(a) return a.isPreferred end,
        apply = true
    })
end

local function getman()
	vim.cmd 'split'
	vim.cmd 'term man <cword>' 
end

local function term()
	vim.cmd 'split'
	vim.cmd 'term'
end

local function close()
	vim.cmd 'close'
end

local function Ex()
	vim.cmd 'split'
	vim.cmd 'Ex'
end


vim.g.vimtex_view_method = "zathura"

vim.keymap.set('n', 'qw', close, opts)
vim.keymap.set('n', 'gm', getman, opts)
vim.keymap.set('n', '<leader>qf', quickfix, opts)
vim.keymap.set('n', '<leader>t', term, opts)
vim.keymap.set('n', '<leader>e', Ex, opts)

vim.opt.updatetime = 10

vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.colorcolumn= '100'

vim.cmd [[colorscheme moonfly]]
