autoload -U compini

# dummy commit
alias dummy='(){ git checkout -b $1 && touch dummy.txt && git add dummy.txt && git commit -m"$1 dummy coomit." && git push origin $1 && git checkout master && git branch -D $1 }'

# emergency command
alias yabai="git add --all; git commit -m'emergency commit'; git branch | grep '*' | cut -d' ' -f2 | xargs git push origin "

# tmuxの起動
alias tmux='tmux -u'

# todoの調査
alias todo='grep -ri todo'

# color
alias grep='grep --color=auto'
export LESS='-R'
export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'

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

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# kubectl completion
source <(kubectl completion zsh)

