let g:python3_host_prog='/Library/Frameworks/Python.framework/Versions/3.9/bin/python3'

source ~/.config/nvim/basic.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/config.vim


packadd! cmp-vsnip
packadd! vim-vsnip
packadd! nerdtree

lua << EOF

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'nvim-autopairs'.setup{}
require'lsp_signature'.setup{}

require'lspconfig'.eslint.setup{ capabilities = capabilities }
require'lspconfig'.gopls.setup{ capabilities = capabilities }
require'lspconfig'.tsserver.setup{ capabilities = capabilities }
require'lspconfig'.html.setup{ capabilities = capabilities }
require'lspconfig'.pylsp.setup{ capabilities = capabilities }
require'lspconfig'.csharp_ls.setup{ capabilities = capabilities }
require'lspconfig'.ocamllsp.setup{ capabilities = capabilities,
    filetypes = { "ml" }
}
EOF




