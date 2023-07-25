cd ~/Downloads
# git clone https://github.com/domtronn/all-the-icons.el.git
git clone https://gitee.com/matchaeggtart/all-the-icons.el.git
mkdir -p ~/.local/share/fonts/all-the-icons
cp -r ~/Downloads/all-the-icons.el/fonts/* ~/.local/share/fonts/all-the-icons
cd ~/.local/share/fonts/all-the-icons
fc-cache -f -v
ll ~/.local/share/fonts/all-the-icons
