local o = vim.opt

o.number = true
o.relativenumber = true

o.autoindent = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.smartindent = true

o.wrap = false

o.smarttab = true

o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true

o.hlsearch = false
o.incsearch = true

o.termguicolors = true

o.scrolloff = 8
o.signcolumn = "yes"
o.isfname:append("@-@")

o.updatetime = 50

o.mouse = "a"

o.colorcolumn = "80"

vim.cmd [[
    highlight ColorColumn ctermbg=12
]]

vim.g.mapleader = " "
