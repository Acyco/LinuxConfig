set nocompatible
set nu
syntax on
syntax enable
set ru
set showcmd
set autowrite




if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
nmap <F5> :NERDTreeToggle<cr>
inoremap jk <Esc>
