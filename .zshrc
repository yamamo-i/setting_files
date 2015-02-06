# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=3000
# End of lines configured by zsh-newuser-install

#PS1="[@${HOST%%.*} %1~]%(!.#.$) "
#PS1="{${fg[blue][${USER}@${HOST%%.*} %1~]}%(!.#.$) " # Linux bash‚Æ“¯‚¶Œ`Ž®
#RPROMPT="{fg[green]}%~% %T"
PROMPT="%(?!%F{green}^-^!%F{red}@_@) %f[%F{magenta}%B%n%b%f@%F{cyan}%U%m%u%f %~]# "
RPROMPT='[%F{green}%d%f %T]'
setopt transient_rprompt
setopt prompt_subst

autoload -U compinit
compinit -u
setopt list_packed
setopt list_types
setopt correct

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls --color=auto"
alias ll="ls -lh"
alias ks="ls"
cdls ()
{
    \cd "$@" && ls
}
alias cd="cdls"
alias tmux='tmux -u'
