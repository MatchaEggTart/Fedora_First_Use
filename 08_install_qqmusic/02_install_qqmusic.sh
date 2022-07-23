cd ~/Downloads
# 下载 qqmusic 安装包 deb
wget https://dldir1.qq.com/music/clntupate/linux/deb/qqmusic_1.1.4_amd64.deb
# 使用 alien 将 qqmusic deb 转换为 rpm
sudo alien -rc qqmusic_1.1.4_amd64.deb
# 本地安装
sudo rpm -ivh qqmusic-1.1.4-2.x86_64.rpm

# emacs .bash_profile

# set qqmusic
# QQMUSIC_HOME=/opt/qqmusic
# PAHT=$PATH:$QQMUSIC_HOME/qqmusic

# qqmusic --no-sandbox
# ps -aux | grep qqmusic
# killall -9 qqmusic

# .zshrc
# alias qqmusic="qqmusic --no-sandbox"
# alias killqqmusic="killall -9 qqmusic"

# /usr/share/application/qqmusic.desktop

# [Desktop Entry]
# Name=QQMusic
# Exec=/opt/qqmusic/qqmusic %U --no-sandbox
# Terminal=false
# Type=Application
# Icon=qqmusic
# StartupWMClass=qqmusic
# Comment=Tencent QQMusic
# Categories=AudioVideo;Audio;Player;
# MimeType=application/x-ogg;application/ogg;audio/x-vorbis+ogg;audio/vorbis;audio/x-vorbis;audio/x-scpls;audio/x-mp3;audio/x-mpeg;audio/mpeg;audio/x-mpegurl;audio/x-flac;audio/mp4;audio/x-it;audio/x-mod;audio/x-s3m;audio/x-stm;audio/x-xm;
# Keywords=Audio;Song;MP3;CD;Podcast;MTP;iPod;Playlist;Last.fm;UPnP;DLNA;Radio;