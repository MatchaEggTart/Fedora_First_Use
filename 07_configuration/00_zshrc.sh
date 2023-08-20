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
alias edge="microsoft-edge-beta --nohub"
# alias edge='func() {microsoft-edge-dev "$1" --nohub;}; func'

# open QQMusic
alias qqmusic="qqmusic --no-sandbox"
# close QQMusic
alias killqqmusic="killall -9 qqmusic"

# neofetch | lolcat
alias nfl="neofetch --source ~/.config/neofetch/ascii-art-neofetch/communist | lolcat"
alias nfll="neofetch --source ~/.config/neofetch/ascii-art-neofetch/communist -L | lolcat"

# default editor
export EDITOR=nvim
