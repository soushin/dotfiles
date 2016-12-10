if (exists("b:did_ftplugin"))
  finish
endif
let b:did_ftplugin = 1

set tabstop=4
set softtabstop=4
set shiftwidth=4

nmap ,l :call PHPLint()<CR>

""
" PHP Lint
"
function! PHPLint()
  let result = system( &ft . ' -l ' . bufname("") )
  echo result
endfunction
