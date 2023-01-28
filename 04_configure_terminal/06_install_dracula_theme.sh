git clone --depth=1 https://github.com/dracula/gnome-terminal ${HOME}/Downloads/dracula-gnome-terminal
cd ${HOME}/Downloads/dracula-gnome-terminal
sh install.sh
# shouldn't add the other theme
# if terminal appear "/usr/bin/cat: /home/**** .dir_colors: Is a directory"
# rm -rf .dir_colors
