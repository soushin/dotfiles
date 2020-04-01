"editor definition------------------------

let mapleader = '\'

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

"nnoremap <silent> <S-j> :split<CR>
"nnoremap <silent> <S-l> :vsplit<CR>
"nnoremap <Bar> $:let pos = getpos('.')<CR>:join<CR>:call setpos('.', pos)<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 折り返し行移動
"nnoremap j gj
"nnoremap k gk
"vnoremap j gj
"vnoremap k gk

" 20行ずつ移動
"nnoremap <C-n> 20j
"vnoremap <C-n> 20j
"nnoremap <C-p> 20k
"vnoremap <C-p> 20k

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

colorscheme tender
  
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

"colorscheme tender
"End dein definition-------------------------

"denite definition-----------------------------

nnoremap [denite] <Nop>
nmap <C-d> [denite]

call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

nnoremap <silent> [denite]<C-g> :<C-u>Denite grep -mode=normal<CR>
nnoremap <silent> [denite]<C-r> :<C-u>Denite -resume<CR>
nnoremap <silent> [denite]<C-n> :<C-u>Denite -resume -cursor-pos=+1 -immediately<CR>
nnoremap <silent> [denite]<C-p> :<C-u>Denite -resume -cursor-pos=-1 -immediately<CR>

" ノーマルモードで起動、jjでノーマルへ
call denite#custom#option('default', {'mode': 'normal'})
call denite#custom#map('insert', 'jj', '<denite:enter_mode:normal>')

" 移動
call denite#custom#map('normal', 'j', '<denite:nop>', 'noremap')
call denite#custom#map('normal', 'k', '<denite:nop>', 'noremap')
call denite#custom#map('normal', '<C-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('normal', '<C-p>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('normal', '<C-u>', '<denite:move_up_path>', 'noremap')
call denite#custom#map('insert', '<C-u>', '<denite:move_up_path>', 'noremap')

"" ウィンドウを分割して開く
call denite#custom#map('normal', '<C-j>', '<denite:do_action:split>', 'noremap')
call denite#custom#map('insert', '<C-j>', '<denite:do_action:split>', 'noremap')
call denite#custom#map('normal', '<C-l>', '<denite:do_action:vsplit>', 'noremap')
call denite#custom#map('insert', '<C-l>', '<denite:do_action:vsplit>', 'noremap')

" End denite definition-------------------------
