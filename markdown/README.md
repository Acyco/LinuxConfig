# Firefor Markdown

* 安装 Markdown Viewer 和 Auto Reload 两个插件
* .vimrc
<pre><code>
nmap <F4> :call Preview()<CR>
func! Preview()
  if(&filetype == 'markdown' ||&filetype =='md')
	exec "!firefox %"
  endif
endfunc
</code></pre>
[baidu](http://baidu.com/) 
