syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
filetype plugin indent on
set autoindent expandtab tabstop=2 shiftwidth=2


set swapfile
set dir=~/.swap-files

set guifont=ProggyCleanTT\ 12
set backspace=2 " Allow backspacing

" =======================
" THEME COLOR
" =======================
colorscheme gruvbox

set termguicolors
set background=dark
set wildmenu " Display command line's tab complete options

" SINTASTIC CONFIG
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" END SYNTASTIC CONFIG "

" Customize fzf colors to match your color scheme
let g:fzf_layout = { 'down':  '40%'}
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

"==========================
"       PRETTIER
"==========================
let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


" =======================
"        Line numbers "
" =======================
set number
set relativenumber

set expandtab " Turn tab into spaces
set showmatch " Show matching brackets
set hlsearch " Highlight search

" =======================
" Enable highlight current line "
" =======================

set cursorline 
set cursorcolumn
:highlight Cursorline cterm=bold


" Vertical align cursor
" set scrolloff=999 

let g:airline_theme='kalisi'

" CTRL-P SETTINGS "
" let g:ctrlp_clear_cache_on_exit = 0
" let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
" if executable('ag')
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" endif
" END CTRL-P SETTINGS "

" =======================
" REMAPS
" =======================
nnoremap <C-n> :NnnExplorer<CR>
nnoremap <C-n><C-n> :NnnExplorer %:p:h<CR>
nnoremap <C-p> :Files<CR> 
nnoremap <C-g> :GFiles?<CR>
nnoremap <C-b> :NERDTreeFind<CR> 
"nnoremap <C-f><C-f> :BLines<CR>
nnoremap <S-Tab> :Windows<CR>
nnoremap <C-f> :Ag<CR>
nnoremap <F8>  :TagbarToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" END REMAPS

" =======================
"       PLUGINS
" =======================
call vundle#begin()
 Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
 Plugin 'PhilRunninger/nerdtree-buffer-ops'
 Plugin 'Xuyuanp/nerdtree-git-plugin'
 Plugin 'tpope/vim-fugitive'
 Plugin 'preservim/nerdtree'
 Plugin 'ycm-core/YouCompleteMe'
 Plugin 'Shougo/neocomplete.vim'
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'tpope/vim-rails'
 Plugin 'vim-ruby/vim-ruby'
 Plugin 'jarun/nnn'
 Plugin 'mcchrish/nnn.vim' " File explorer
 " Plugin 'kien/ctrlp.vim'
 Plugin 'junegunn/fzf'
 Plugin 'junegunn/fzf.vim'
 Plugin 'airblade/vim-gitgutter'
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'voldikss/vim-floaterm'
 " Plugin 'vim-syntastic/syntastic'
 Plugin 'ryanoasis/vim-devicons'
 Plugin 'preservim/tagbar'
 "Themes
 " Plugin 'flazz/vim-colorschemes'
 Plugin 'kaicataldo/material.vim', { 'branch': 'main' }
 Plugin 'karoliskoncevicius/sacredforest-vim'
 Plugin 'dracula/vim', { 'name': 'dracula' }
 Plugin 'lifepillar/vim-solarized8'
 Plugin 'mhartington/oceanic-next'
 Plugin 'jpo/vim-railscasts-theme'
 " Js, Ts, React
 Plugin 'pangloss/vim-javascript'
 Plugin 'leafgarland/typescript-vim'
 Plugin 'maxmellon/vim-jsx-pretty'
 Plugin 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
call vundle#end()
