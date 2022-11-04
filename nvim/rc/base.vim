scriptencoding utf-8

let g:rc_dir = expand('~/.nvim/rc')
function! s:source_rc(rc_file_name)
    let rc_file = expand(g:rc_dir . '/' . a:rc_file_name)
    if filereadable(rc_file)
        execute 'source' rc_file
    endif
endfunction

"editor definition------------------------

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
