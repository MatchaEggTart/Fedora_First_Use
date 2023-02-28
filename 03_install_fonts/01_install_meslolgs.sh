cd ~/Downloads
git clone https://github.com/kalaschnik/meslolgs-nf-template ~/Downloads/meslolgs-nf-template
mkdir -p ~/.local/share/fonts/meslolgs
cp -r ./meslolgs-nf-template/* ~/.local/share/fonts/meslolgs
cd ~/.local/share/fonts/meslolgs
fc-cache -f -v


ls ~/.local/share/fonts/meslolgs/
