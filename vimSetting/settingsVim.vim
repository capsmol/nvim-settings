"MAPPINGS FOR COC
nmap <silent>gd <Plug>(coc-definition)
nmap <Leader>cr <Plug>(coc-rename)
xmap <Leader>ca <Plug>(coc-codeaction-selected)
nmap <Leader>cf <Plug>(coc-format)
nmap <Leader>cc :CocCommand editor.action.pickColor<Enter>
"ShowDocumentation in functions.vim
nnoremap <silent>K :call ShowDocumentation()<Enter>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
"scroll windows
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(1)\<Enter>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(0)\<Enter>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"request window/popup
inoremap <silent><expr> <C-Space> coc#refresh()
"expand snippets
imap <C-l> <Plug>(coc-snippets-expand)
"select from menu by Enter
inoremap <silent><expr> <Enter> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<Enter>\<C-r>=coc#on_enter()\<Enter>"

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"Telescope
nnoremap <silent> ;f <cmd>Telescope find_files<cr>
nnoremap <silent> ;r <cmd>Telescope live_grep<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

