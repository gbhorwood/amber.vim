" Vim filetype plugin file
" Language:     Amber

augroup vim-amber-filetype
    autocmd!
    au BufRead,BufNewFile *.ab set filetype=amber
augroup END
