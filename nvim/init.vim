let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

"editor config-------------------------

let mapleader = '\'

set number
set ignorecase
set smartcase
set wrapscan
set incsearch
set inccommand=split

set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab
set shiftround

nnoremap <silent> <S-j> :split<CR>
nnoremap <silent> <S-l> :vsplit<CR>
nnoremap <Bar> $:let pos = getpos('.')<CR>:join<CR>:call setpos('.', pos)<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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

inoremap <silent> jj <ESC>:<C-u>w<CR>

"End editor config-------------------------

"vim-go config----------------------------
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
"End vim-go config

"dein scripts-----------------------------
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

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein scripts-------------------------

"denite scripts-----------------------------

let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

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

" ファイル一覧
noremap [denite] :Denite file_rec -mode=insert
call denite#custom#var('file_rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
call denite#custom#var('file_rec', 'matchers', ['matcher_fuzzy', 'matcher_ignore_globs'])
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ ['.git/', '__pycache__/', '*.o', '*.make', '*.min.*'])

" ディレクトリ一覧
noremap [denite]<C-d> :<C-u>Denite directory_rec<CR>
noremap [denite]<C-c> :<C-u>Denite directory_rec -default-action=cd<CR>

" 移動
call denite#custom#map('normal', 'j', '<denite:nop>', 'noremap')
call denite#custom#map('normal', 'k', '<denite:nop>', 'noremap')
call denite#custom#map('normal', '<C-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('normal', '<C-p>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('normal', '<C-u>', '<denite:move_up_path>', 'noremap')
call denite#custom#map('insert', '<C-u>', '<denite:move_up_path>', 'noremap')

" ウィンドウを分割して開く
call denite#custom#map('normal', '<C-j>', '<denite:do_action:split>', 'noremap')
call denite#custom#map('insert', '<C-j>', '<denite:do_action:split>', 'noremap')
call denite#custom#map('normal', '<C-l>', '<denite:do_action:vsplit>', 'noremap')
call denite#custom#map('insert', '<C-l>', '<denite:do_action:vsplit>', 'noremap')

"End denite scripts-------------------------

" nerdtree scripts-------------------------
nnoremap <silent> <C-e> :NERDTreeToggle<CR>

" 表示幅
let g:NERDTreeWinSize=50

" ブックマークを表示
let g:NERDTreeShowBookmarks=1

" 親ディレクトリへ移動
let g:NERDTreeMapUpdir=''

" ファイルの開き方
let g:NERDTreeMapOpenSplit='<C-j>'
let g:NERDTreeMapOpenVSplit='<C-l>'

" ファイルを開いたらNERDTreeを閉じる
let g:NERDTreeQuitOnOpen=1

" 隠しファイルを表示
let g:NERDTreeShowHidden=1

" 非表示ファイル
let g:NERDTreeIgnore=['\.git$', '\.clean$', '\.swp$', '\.bak$', '\~$']

" NERDTreeを同時に閉じる
autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif

"End nerdtree scripts-------------------------

" operator-replace scripts-------------------------
map _ <Plug>(operator-replace)
"End operator-replace scripts-------------------------