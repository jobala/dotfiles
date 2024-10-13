return {
  "akinsho/toggleterm.nvim",

  config = function()
    vim.cmd([[
            autocmd TermEnter term://*toggleterm#*
                  \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

            nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
            inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
        ]])

    require("toggleterm").setup({})
  end,
}
