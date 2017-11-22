let i=1
while i<5
"  echo "count is" i
  let i+=1
endwhile

for i in range(1,4)
"  echo "count is" i
endfor
function! s:Min(num1,num2)
  if a:num1<a:num2
  let smaller = a:num1
  else
  let smaller = a:num2
endif
return smaller
endfunction
"echo s:Min(5,3)


let line = getline(".")
"echo line

function! Count_words() range
  let n= a:firstline
  let count =0
  while n<=a:lastline
    let count += Wordcount(getline(n))   
endwhile
echo "found " . count . "words"
endfunction
"10,30call Count_words()

function! T1() range
  let n = a:firstline
  while n <= a:lastline
	let cc = getline(n)
	n=n+1
  echo cc
endwhile
endfunction

"22,24call T1()

function! Number()
  echo "line " . line(".")." contains: " . getline(".")
endfunction
"41,45call Number()


let alist = ['one','two','three']
for n in alist
" echo n
endfor

let uk2nl = {'one':'een','two':'twee','three':'drie'}
"echo uk2nl['two']

for key in keys(uk2nl)
"  echo key
endfor

for key in sort(keys(uk2nl))
"  echo key
endfor

"echo uk2nl.one

let uk2nl.four ='vier'
"echo uk2nl

function! uk2nl.translate(line) dict
  return join(map(split(a:line),'get(self,v:val,"???")'))
endfunction
"echo uk2nl.translate('three two five one')

let transdict = {}
function! transdict.translate(line) dict
  return join(map(split(a:line),'get(self.words,v:val,"???")'))
endfunction

let uk2nl = copy(transdict)
let uk2nl.words = {'one':'een','two':'twee','three':'drie'}
echo uk2nl.translate('three one')

let uk2de = copy(transdict)
let uk2de.words = {'one':'ein','two':'zwei','three':'drei'}
echo uk2de.translate('three one')


if $LANG =~ 'cn'
  let trans =uk2de
endif








