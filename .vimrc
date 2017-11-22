set nocompatible
set nu
set relativenumber
syntax on
syntax enable
set ru
set showcmd
set autowrite


" vim 默认八进制  把所有数字当成十进制
set nrformats= 




if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
nmap <F5> :NERDTreeToggle<cr>
nmap <F6> :BundleInstall<cr>
inoremap jk <Esc>
