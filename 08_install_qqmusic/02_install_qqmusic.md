# Fedora 安装 QQ音乐

参考： [在Fedora上安装QQ音乐 （非wine）](https://blog.csdn.net/xianfengdesign/article/details/125129021)

非常感谢 xianfengdesign

## 使用 Fedora 36 安装 QQ Music 1.1.4 Linux 版本

* 这是使用 Fedora 36 版本 安装 1.1.4 QQ音乐，其他版本不知道，囧

## 安装 alien

* alien

  * WHAT
    * alien 是一个转换工具，可以让 .deb 与 .rpm 互相转换

  * HOW
    * 安装 alien

      ``` sh
      sudo dnf install alien -y
      ```

## 安装QQ音乐

* HOW
  * [下载QQ音乐](https://y.qq.com/download/download.html)

    * 要下载 Deb 包

  * 或者使用指令下载

    ``` sh
    cd ~/Downloads
    wget https://dldir1.qq.com/music/clntupate/linux/deb/qqmusic_1.1.4_amd64.deb
    ```

  * 使用 alien 将 QQ音乐 Deb安装包 转换为 Rpm安装包

    ``` sh
    sudo alien -rc qqmusic_1.1.4_amd64.deb
    ```

  * 本地安装 QQ音乐

    ``` sh
    sudo rpm -ivh qqmusic-1.1.4-2.x86_64.rpm
    ```

## 配置 QQ音乐

* 设置环境变量（终端运行QQ音乐）

  * 打开 ~/.bash_profile，在文件最后添加

    ``` sh
    # set QQMusic environment
    QQMUSIC_HOME="/opt/qqmusic"
    PAHT=$PATH:"$QQMUSIC_HOME/qqmusic"
    ```

* 设置 ~/.bashrc（如果使用shell） 或 设置 .zshrc（如果使用zsh）

  * 打开 ~/.bashrc 或者 ~/.zshrc，末尾添加

    ``` sh
    # open QQMusic
    alias qqmusic="qqmusic --no-sandbox"
    # close QQMusic
    alias killqqmusic="killall -9 qqmusic"
    ```

  * --no-sandbox

    * [Electron的gpu问题](https://blog.csdn.net/xianfengdesign/article/details/125129021)

  * killall

    * 也是Electron问题，QQ音乐有时候无法在后台彻底退出，只是挂起，这样就能用终端完全退出 QQ音乐

  * 启动 QQ音乐

    * 终端输入

      ``` sh
      qqmusic
      ```

  * 关闭 QQ音乐

    * 终端输入

      ``` sh
      killqqmusic
      ```

## 设置快捷方式

* 因为安装完其实就有快捷方式，但是因为 Electron 问题，可能导致打不开，所以我们需要修改快捷方式

* Fedora 的快捷方式文件夹在 /usr/share/application/

* 打开 qqmusic.desktop

  ``` sh
  # 假如你使用 Vim
  vim /usr/share/applications/qqmusic.desktop
  # 假如你使用 Emacs
  emacs /usr/share/applications/qqmusic.desktop &
  ```

* 把文件改成这样

  ``` conf
  [Desktop Entry]
  Name=QQMusic
  Exec=/opt/qqmusic/qqmusic %U --no-sandbox
  Terminal=false
  Type=Application
  Icon=qqmusic
  StartupWMClass=qqmusic
  Comment=Tencent QQMusic
  Categories=AudioVideo;Audio;Player;
  MimeType=application/x-ogg;application/ogg;audio/x-vorbis+ogg;audio/vorbis;audio/x-vorbis;audio/x-scpls;audio/x-mp3;audio/x-mpeg;audio/mpeg;audio/x-mpegurl;audio/x-flac;audio/mp4;audio/x-it;audio/x-mod;audio/x-s3m;audio/x-stm;audio/x-xm;
  Keywords=Player;Audio;Song;MP3;CD;Podcast;MTP;iPod;Playlist;Last.fm;UPnP;DLNA;Radio;
  ```

* 重启电脑后，在 默认应用（Default Applications）可以将 QQMusic 设置为音乐的默认应用
