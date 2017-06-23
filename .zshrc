#!/usr/bin/zsh

HISTFILE=~/.histfile
HISTSIZE=500
SAVEHIST=500

zstyle :compinstall filename '/root/.zshrc'
zstyle ':completion:*' menu select
zstyle ':completion:*:git:*' script ~/.zsh/git/git-completion.zsh

autoload -Uz compinit
autoload -U colors && colors

compinit
colors

bindkey -v
bindkey "\e[3~" delete-char
bindkey "\e[7~" beginning-of-line
bindkey "\e[8~" end-of-line

ZLE_REMOVE_SUFFIX_CHARS=""

alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias lla='ls -lAh --color=auto'
alias grep='grep -i --color'
alias mpdviz='mpdviz -i -v "spectrum"'
alias shutdown='sudo shutdown -P -h now'
alias reboot='sudo reboot'
alias xclip='xclip -selection c'
alias up='cd ..'
alias gits='git status && echo && git diffs'
alias gitf='git logc -3 && echo && gits'

export EDITOR=vim

source ~/.zsh/syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/git/git-prompt.sh

setopt prompt_subst
. ~/.zsh/git/git-prompt.sh

# red		31
# yellow	33
# green		32
# blue		34
# magenta	35
# white		37
#
# normal	0
# bold		1

PROMPT=$'%{\e[1;33m%}%n %{\e[0;37m%}at %{\e[1;33m%}%m %{\e[0;37m%}in %{\e[1;33m%}%1~ $(__git_ps1 "\e[0;37mon\e[0m \e[1;31m%s\e[0m")\n%{\e[0;37m%}%%%{\e[0m%} '

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_STYLES[command]='fg=green'
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta'
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf' 'fg=green,underline')
