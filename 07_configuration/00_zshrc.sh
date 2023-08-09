# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  fzf

  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Personnal config
alias rm="rm -i"
alias mv="mv -i"

# Vim
# alias vim='gvim -v'
alias vim="vimx"
alias nv="nvim"

# Edge
# alias edge='func() {microsoft-edge-stable "$1" --nohub;}; func'
alias edge='func() {microsoft-edge-beta "$1" --nohub;}; func'
# alias edge='func() {microsoft-edge-dev "$1" --nohub;}; func'

# open QQMusic
alias qqmusic="qqmusic --no-sandbox"
# close QQMusic
alias killqqmusic="killall -9 qqmusic"

# default editor
export EDITOR=nvim

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
