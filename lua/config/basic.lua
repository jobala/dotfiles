require("util")

vim.g.mapleader = ","

-- fast writing & saving
nmap("<leader>w", ":w!<cr>")
imap("jj", "<Esc>")

-- map space to search
nmap("<space>", "/")
nmap("<C-space>", "?")

nmap("<leader><cr>", ":noh<cr>")

vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.ai = true
vim.opt.si = true
vim.opt.lbr = true
vim.opt.tw = 120
vim.opt.wrap = true

nmap("<C-j>", "<C-W>j")
nmap("<C-k>", "<C-W>k")
nmap("<C-h>", "<C-W>h")
nmap("<C-l>", "<C-W>l")

vim.cmd([[
    set background=dark

    au BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

    au Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
    au Filetype typescript setlocal ts=2 sw=2 sts=0 expandtab
    au Filetype typescriptreact setlocal ts=2 sw=2 sts=0 expandtab
    au Filetype lua setlocal ts=2 sw=2 sts=0 expandtab


    " Return to last edit position when opening files.
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    set diffopt+=iwhiteall
]])
