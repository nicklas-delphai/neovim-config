" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

nmap <leader>gs :SignifyToggle<CR>
nmap <leader>gh :SignifyToggleHighlight<CR>

" If you like colors instead
highlight SignifySignAdd                  ctermbg=green                guibg=#00ff00
highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00
