" <essentials>
set nocompatible " don't try to be compatible with V
filetype plugin on
filetype plugin indent on
lua require('plugins')
set relativenumber
set termguicolors
set expandtab
set hidden
set tabstop=2
set softtabstop=2
set shiftwidth=2
setlocal textwidth=79
setlocal foldmethod=expr
syntax on
set t_Co=256
set mouse=a
set shell=/usr/bin/fish
compiler fish
" </essentials>

" <theme>
set cursorline
colorscheme onehalfdark
let g:airline_theme='onedark'
" </theme>

" <functions>
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction
" </functions>

" <keybinds_and_stuff>
nnoremap <silent> <C-Left> :call WinMove('h')<CR>
nnoremap <silent> <C-Down> :call WinMove('j')<CR>
nnoremap <silent> <C-Up> :call WinMove('k')<CR>
nnoremap <silent> <C-Right> :call WinMove('l')<CR>
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv
autocmd VimEnter * CHADopen
nnoremap <leader>v <cmd>CHADopen<cr>
nnoremap <C-S> :bnext<CR>
nnoremap <C-A> :bprev<CR>
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nmap     <C-F>f <Plug>CtrlSFPrompt                  
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
" </keybinds_and_stuff>


" <backups>
"Turn on backup option
set backup

"Where to store backups
"set backupdir=~/vim_backups//

"Make backup before overwriting the current buffer
set writebackup

"Overwrite the original backup file
set backupcopy=yes

"Meaningful backup name, ex: filename@2015-04-05.14:59
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")

" </backups>

lua << EOF
  require("flutter-tools").setup{} -- use defaults
EOF
