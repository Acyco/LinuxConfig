alias ll='ls -l --color=auto'
alias la='ls -al --color=auto'
alias cls='clear' #清屏

alias cp='cp -v'
alias mv='mv -v'
alias cpr='cp -r'

alias ..='cd ..'
alias cdd='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'


alias home='cd ~'
############################
#      git aliases         #
############################
alias ga='git add'



alias myip='curl ifconfig.me'
alias tq='curl wttr.in/quanzhou'

#创建目录并进入
mcd (){
	mkdir -pv "$@"
	cd "$@"
}


