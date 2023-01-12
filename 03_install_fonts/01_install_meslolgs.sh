cd ~/Downloads
git clone https://github.com/kalaschnik/meslolgs-nf-template ~/Downloads/meslolgs-nf-template
mkdir -p ~/.local/share/fonts/meslolgs
cp ./meslolgs-nf-template/* ~/.local/share/fonts/meslolgs
fc-cache -v 
ls ~/.local/share/fonts/meslolgs/
