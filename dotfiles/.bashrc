# ~_.bashrc

# git branch 出力
git_branch() {
      echo $(git branch --no-color 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p")
}

# pronpt
export PS1='\[\033[0;33m\]\W [\u@\[\033[1;32m\]\t\[\033[1;37m\] $(git_branch) \[\033[0;33m\]]\[\033[0m\]% '

# setting for ls
export LSCOLORS=gxfxcxdxbxegedabagacad
alias ls='ls -aFG'
alias ll='ls -alFG'

alias vi='vim'

# setting for grep
export GREP_COLOR='1;37;41'
alias grep='grep -E --color=auto'

export LANG=ja_JP.UTF-8

# setting for xterm
if [ "$TERM" == xterm ]; then
  export TERM=xterm-color
fi
