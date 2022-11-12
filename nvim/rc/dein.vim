scriptencoding utf-8

if &compatible
  set nocompatible
endif

let s:dein_dir = expand('~/.cache/dein')

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let g:rc_dir    = expand('~/.config/nvim/dein')
  let s:toml      = g:rc_dir .'/dein.toml'
  let s:ddu_toml = g:rc_dir . '/dein_ddu.toml'

  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:ddu_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable
call dein#recache_runtimepath()

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
