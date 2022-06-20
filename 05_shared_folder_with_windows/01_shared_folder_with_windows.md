# Fedora开机自动挂载硬盘

* 这是双系统情况下，windows的数据盘想跟linux系统共享

## 检查

* 因为挂载操作基本都使用 root 权限，所以 先切换到 root 用户

    ```shell {.line-numbers}
    sudo su
    ```

* 查看需要连接的硬盘名称

    ```shell {.line-numbers}
    fdisk -l
    ```

    实际上基本都是 /dev/sd[x][n]\
    x代表英文字母\
    n代表数字

* 查看是否已经被挂载了

    ```shell {.line-numbers}
    fuser -a /dev/硬盘名称
    ```

* 如果已经挂载了，上面指令返回带有进程编号，说明已经被访问了，可以杀掉这个进程

    ```shell {.line-numbers}
    fuser -k /dev/硬盘
    ```

## 修改

我们需要修改 /etc/fstab，为了启动时，就能自动挂载

* 首先，我们需要查看硬盘的 UUID

    ```shell {.line-numbers}
    lsblk -f
    ```

* 然后查看我们的 uid，gid

    ```shell {.line-numbers}
    id [用户名]
    ```

* 可能需要了解权限掩码
    >r = 4 (可读)
    >w = 2 (可写)
    >x = 1 (可运行)

* 在 /mnt 创建挂载使用的文件夹(这步可以忽略了)

    ```shell <.line-numbers>
    mkdir -p /mnt/[文件夹名]
    ```

* 修改 /etc/fstab，用 vi/emacs/gedit 等编辑器在末尾添加新的挂载
  
    ```shell <.line-numbers>
    sudo emacs /etc/fstab
    ```

* 在 fstab末尾添加

    ```shell <.line-numbers>
    # 格式
    UUID=[硬盘uuid号]   /mnt/[挂载的文件夹] ntfs    defaults,utf8,uid=1000,gid=1000,dmask=022,fmask=022 0   0
    ```

    ```shell <.line-numbers>
    # 例子
    UUID=C87A815A7A814662   /mnt/DATA ntfs    defaults,utf8,uid=1000,gid=1000,dmask=022,fmask=022 0   0
    ```

    UUID 使用 lsblk -f 查询\
    ntfs 系统文件类型，在 fdisk -l 可以查询
    关于权限 022 是为了 drwxr-xr-x

* 重启

    ```shell <.line-numbers>
    reboot now
    ```

* 退出 root 用户，其实一般重启就退出了，不过要是还是 root

    ```shell <.line-numbers>
    sudo [用户名]
    ```

* 创建软链接

    ```shell <.line-numbers>
    ln -s /mnt/[文件名]  [自定义的快捷方式名]
    ```
