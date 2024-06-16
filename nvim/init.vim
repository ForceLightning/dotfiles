" so <sfile>:h/plugins.vim

" lua require('config')
lua require('init')

if exists('g:vscode')
    set number relativenumber
else
    " map <C-p> :NERDTreeToggle<CR>
    " map ; :Files<CR>
    " nnoremap <silent> <S-f> :Ag<CR>
endif
" set statusline=2
set number relativenumber
set spelllang=en_uk
set backspace=indent,eol,start
set autoindent
set smartindent
set showcmd
colorscheme tokyonight-night
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set timeoutlen=100

set laststatus=2
autocmd FileType json syntax match Comment +\/\/.\+$+

set hidden

set cmdheight=2
set updatetime=300
set shortmess+=c

" Fzf config
let g:fzf_vim = {}
let g:fzf_vim.preview_bash = 'C:\Program Files\Git\bin\bash.exe'

" Pydocstring settings
autocmd FileType python setlocal tabstop=4 shiftwidth=4 smarttab expandtab
let g:pydocstring_enable_mapping = 0
let g:pydocstring_formatter = 'sphinx'
nmap <silent> <M-B> <Plug>(pydocstring)

" " Use tab for trigger completion with characters ahead and navigate
" " NOTE: There's always complete item selected by default, you may want to enable
" " no select by `"suggest.noselect": true` in your configuration file
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
"
" " Make <CR> to accept selected completion item or notify coc.nvim to format
" " <C-g>u breaks current undo, please make your own choice
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"
" function! CheckBackspace() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
"
" " Use <c-space> to trigger completion
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif
"
" " Use `[g` and `]g` to navigate diagnostics
" " Use `:CocDiagnostics to get all diagnostics of current buffer in location
" " list.
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
" " GoTo code navigation
" nmap <buffer><silent> gd <Plug>(coc-definition)
" nmap <buffer><silent> gds :call CocAction('jumpDefinition', 'split')<CR>
" nmap <buffer><silent> gdv :call CocAction('jumpDefinition', 'vsplit')<CR>
" nmap <buffer><silent> gdt :call CocAction('jumpDefinition', 'tabe')<CR>
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
" nmap <silent> ga <Plug>(coc-codeaction-line)
" xmap <silent> ga <Plug>(coc-codeaction-selected)
" nmap <silent> gA <Plug>(coc-codeaction)
"
" " Use K to show documentation in preview window
" nnoremap <silent> K :call ShowDocumentation()<CR>
"
" function! ShowDocumentation()
"   if CocAction('hasProvider', 'hover')
"     call CocActionAsync('doHover')
"   else
"     call feedkeys('K', 'in')
"   endif
" endfunction
"
" " Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')
"
" " Symbol renaming
" nmap <leader>rn <Plug>(coc-rename)
"
" " Formatting selected code.
" "xmap <leader>f 	<Plug>(coc-format-selected)
" "nmap <leader>f  <Plug>(coc-format-selected)
"
" augroup mygroup
" 	autocmd!
" 	" Setup formatexpr specified filetype(s).
" 	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
" 	" Update signature help on jump placeholder.
" 	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end
"
" " Applying codeAction to the selected region
" " Example: `<leader>aap` for current paragraph
" xmap <leader>a 	<Plug>(coc-codeaction-selected)
" nmap <leader>a 	<Plug>(coc-codeaction-selected)
"
" " Remap keys for applying codeAction to the current buffer.
" nmap <leader>ac <Plug>(coc-codeaction)
" " Apply AutoFix to problem on the current line.
" nmap <leader>qf <Plug>(coc-fix-current)
"
"
" " Remap keys for applying refactor code actions
" nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
" xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
" nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
"
" " Map function and class text objects
" " " NOTE: Requires 'textDocument.documentSymbol' support from the language
" " server.
" xmap if <Plug>(coc-funcobj-i)
" omap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap af <Plug>(coc-funcobj-a)
" xmap ic <Plug>(coc-classobj-i)
" omap ic <Plug>(coc-classobj-i)
" xmap ac <Plug>(coc-classobj-a)
" omap ac <Plug>(coc-classobj-a)
"
" " Remap <C-f> and <C-b> to scroll float windows/popups
" if has('nvim-0.4.0') || has('patch-8.2.0750')
"   nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"   nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"   inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"   inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
"   vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"   vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" endif
"
" " Use CTRL-S for selections ranges.
" " Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)
"
" " Add `:Format` command to format current buffer.
" command! -nargs=0 CocFormat :call 	CocAction('format')
"
" " Add `:Fold` command to fold current buffer.
" command! -nargs=? Fold :call 	CocAction('fold', <f-args>)
"
" " Add `:OR` command for organize imports of the current buffer.
" command! -nargs=0 OR 	:call 	CocAction('runCommand', 'editor.action.organizeImport')
"
" " Coc Lightline integration
" let g:lightline = {
"     \ 'colorscheme' : 'tokyonight-night',
"     \ 'active': {
"     \   'left': [ [ 'mode', 'paste' ],
"     \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
"     \ },
"     \ 'component_function': {
"     \   'cocstatus': 'coc#status'
"     \ },
"     \ }
" autocmd User CocStatusChange redrawstatus
" autocmd User CocStatusChange, CocDiagnosticChange call lightline#update()
"
"
" let g:hardtime_default_on = 1
" filetype plugin on
"
" NERD Commenter Stuff
" nmap <C-_> :call nerdcommenter#Comment('n', 'toggle')<CR>
" vmap <C-_> :call nerdcommenter#Comment('x', 'toggle')<CR>gv
" imap <C-_> <esc>:call nerdcommenter#Comment('n', 'insert')<CR>i
" let g:indentLine_enabled = 1

" Allow saving of files as sudo when forgeting to start vim as sudo
cmap w!! w !sudo tee > /dev/null %

" Conform.nvim
"nnoremap <leader>F Format
