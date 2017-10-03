autoload -U compinit
compinit

# tmuxの起動
alias tmux='tmux -u'

# grep color
alias grep='grep --color=auto'

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# gitの設定
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '[%b]'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

PROMPT="%(?!%F{green}^-^!%F{red}@_@) %f[%F{magenta}%B%n%b%f@%F{cyan}%U%m%u%f %~]$ "
RPROMPT='[%F{green}%d%f %T]%F{red}%1v%f'
setopt transient_rprompt
setopt prompt_subst

autoload -U compinit
compinit -u
setopt list_packed
setopt list_types
setopt correct

export LSCOLORS=cxfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls -G"
alias ll="ls -lh"
alias ks="ls"
cdls ()
{
    \cd "$@" && ls
}
alias cd="cdls"

