let g:rc_dir = expand('~/.nvim/rc')
function! s:source_rc(rc_file_name)
    let rc_file = expand(g:rc_dir . '/' . a:rc_file_name)
    if filereadable(rc_file)
        execute 'source' rc_file
    endif
endfunction

"editor definition------------------------

let g:python3_host_prog=expand('python3')

let mapleader = '\'

call s:source_rc('githubtoken.vim')

set shell=/bin/zsh
set number
set list
set listchars=tab:▸\ ,eol:¬,extends:»,precedes:«,nbsp:%
set ignorecase
set smartcase
set smartindent
set wrapscan
set incsearch
set inccommand=split

set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab
set shiftround
set clipboard=unnamed

if has("autocmd")
  "ファイルタイプの検索を有効にする
  filetype plugin on
  "ファイルタイプに合わせたインデントを利用
  filetype indent on
  "sw=shiftwidth, sts=softtabstop, ts=tabstop, et=expandtabの略
  autocmd FileType yaml setlocal sw=2 sts=2 ts=2 et
endif

"nnoremap <silent> <S-j> :split<CR>
"nnoremap <silent> <S-l> :vsplit<CR>
"nnoremap <Bar> $:let pos = getpos('.')<CR>:join<CR>:call setpos('.', pos)<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>

" 折り返し行移動
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" 20行ずつ移動
nnoremap <C-n> 20j
vnoremap <C-n> 20j
nnoremap <C-p> 20k
vnoremap <C-p> 20k

"inoremap <silent> jj <ESC>:<C-u>w<CR>

"End editor definition------------------------

"dein definition-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" Theme
colorscheme hybrid
  
" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
    nnoremap <silent><buffer><expr> <CR>
                \ denite#do_map('do_action')
    nnoremap <silent><buffer><expr> d
                \ denite#do_map('do_action', 'delete')
    nnoremap <silent><buffer><expr> p
                \ denite#do_map('do_action', 'preview')
    nnoremap <silent><buffer><expr> q
                \ denite#do_map('quit')
    nnoremap <silent><buffer><expr> i
                \ denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> <Space>
                \ denite#do_map('toggle_select').'j'
endfunction

" Filer
nnoremap <C-e> :<c-u>Fern . -drawer -keep -toggle -reveal=%<CR>
