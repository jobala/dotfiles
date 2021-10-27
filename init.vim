let g:python3_host_prog='/Library/Frameworks/Python.framework/Versions/3.9/bin/python3'

source ~/.config/nvim/basic.vim
source ~/.config/nvim/config.vim

lua << EOF

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'nvim-autopairs'.setup{}
require'lsp_signature'.setup{}

require'lspconfig'.tsserver.setup{ capabilities = capabilities }
require'lspconfig'.html.setup{ capabilities = capabilities }
require'lspconfig'.pylsp.setup{ capabilities = capabilities }
require'lspconfig'.ocamllsp.setup{ capabilities = capabilities,
filetypes = { "ml" }
}
EOF


