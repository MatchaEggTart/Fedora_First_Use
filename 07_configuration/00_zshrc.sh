# Personnal config
alias rm="rm -i"
alias mv="mv -i"

# Vim
# alias vim='gvim -v'
alias vim="vimx"
alias nv="nvim"

# Edge
# alias edge='microsoft-edge-stable'
alias edge='microsoft-edge-beta'
# alias edge='microsoft-edge-dev'

# open QQMusic
alias qqmusic="qqmusic --no-sandbox"
# close QQMusic
alias killqqmusic="killall -9 qqmusic"

# default editor
export EDITOR=emacs

# vterm
vterm_printf() {
    if [ -n "$TMUX" ] && ([ "${TERM%%-*}" = "tmux" ] || [ "${TERM%%-*}" = "screen" ]); then
        # Tell tmux to pass the escape sequences through
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}
