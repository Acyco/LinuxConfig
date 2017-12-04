set shortmess=atI	"不显示xx儿童的提示"
set cmdheight=1
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

"""""""""""""""""""""""
nmap lh ^
nmap le $


if filereadable(expand("~/.vimrc.bundles"))
source ~/.vimrc.bundles
endif
nmap <F5> :NERDTreeToggle<cr>
nmap <F6> :BundleInstall<cr>
inoremap jk <Esc>
"按<F4>使用Firefox预览文件
	nmap <F4> :call Preview()<CR>
func! Preview()
	if &filetype == 'markdown' || $filetype == 'md'
	exec "!firefox %"
	endif
	endfunc
