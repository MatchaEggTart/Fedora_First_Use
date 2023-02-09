cd ~/Downloads
svn checkout https://github.com/lxgw/LxgwWenKai/trunk/fonts/TTF
mv TTF lxgwwenkai
mkdir -p ~/.local/share/fonts/lxgwwenkai
cp -r ./lxgwwenkai/* ~/.local/share/fonts/lxgwwenkai
cd ~/.local/share/fonts/lxgwwenkai
fc-cache -v


ls ~/.local/share/fonts/lxgwwenkai
