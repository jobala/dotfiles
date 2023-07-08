let g:python3_host_prog='/Library/Frameworks/Python.framework/Versions/3.9/bin/python3'

source ~/.config/nvim/basic.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/config.vim

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

packadd! cmp-vsnip
packadd! vim-vsnip
packadd! nerdtree


lua << EOF
 
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'nvim-autopairs'.setup{}
require'lsp_signature'.setup{}

require'lspconfig'.elmls.setup{ capabilities = capabilities }
require'lspconfig'.eslint.setup{ capabilities = capabilities }
require'lspconfig'.racket_langserver.setup{ capabilities = capabilities }
require'lspconfig'.gopls.setup{ capabilities = capabilities }
require'lspconfig'.tsserver.setup{ capabilities = capabilities }
require'lspconfig'.html.setup{ capabilities = capabilities }
require'lspconfig'.pylsp.setup{ capabilities = capabilities }
require'lspconfig'.csharp_ls.setup{ capabilities = capabilities }
require'lspconfig'.hls.setup{ capabilities = capabilities, filetypes = { "hs" } }
require'lspconfig'.solargraph.setup{ capabilities = capabilities }
require'lspconfig'.ocamllsp.setup{ capabilities = capabilities,
    filetypes = { "ml" }
}

require'nvim-treesitter.configs'.setup{
        ensure_installed = {"javascript", "typescript", "go"},
        highlight = { enable = true },
}
EOF

