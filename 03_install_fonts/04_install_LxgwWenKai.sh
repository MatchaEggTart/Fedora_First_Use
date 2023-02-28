cd ~/Downloads
svn checkout https://github.com/lxgw/LxgwWenKai/trunk/fonts/TTF
mv TTF lxgw-wenkai
mkdir -p ~/.local/share/fonts/lxgw-wenkai
cp -r ./lxgwwenkai/* ~/.local/share/fonts/lxgw-wenkai
cd ~/.local/share/fonts/lxgw-wenkai
fc-cache -f -v


ls ~/.local/share/fonts/lxgw-wenkai
