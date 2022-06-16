## 检查
因为挂载操作基本都使用 root 权限，所以 先切换到 root 用户
```shell {.line-numbers}
sudo su
```

* 查看需要连接的硬盘名称
    ```shell {.line-numbers}
    fdisk -l
    ```
        实际上基本都是 /dev/sd[x][n]
        x代表英文字母
        n代表数字
<br/>

* 查看是否已经被挂载了
    ```shell {.line-numbers}
    fuser -a /dev/硬盘名称
    ```
<br/>

* 如果已经挂载了，上面指令返回带有进程编号，说明已经被访问了，可以杀掉这个进程
    ```shell {.line-numbers}
    fuser -k /dev/硬盘
    ```
<br/>

## 修改
我们需要修改 /etc/fstab，为了启动时，就能自动挂载
<br/>

* 首先，我们需要查看硬盘的 UUID
    ```shell {.line-numbers}
    lsblk -f
    ```
<br/>

* 然后查看我们的 uid，gid
    ```shell {.line-numbers}
    id [用户名]
    ```
<br/>

* 可能需要了解权限掩码
    >r = 4 (可读)
    >w = 2 (可写)
    >x = 1 (可运行)
<br/>

* 在 /mnt 创建挂载使用的文件夹
    ```shell <.line-numbers>
    mkdir -p /mnt/[文件夹名]
    ```
<br/>

* 修改 /etc/fstab，用 vi/emacs/gedit 等编辑器在末尾添加新的挂载
例子
    ```shell <.line-numbers>
    UUID=[硬盘uuid号]   /mnt/[挂载的文件夹] ntfs    defaults,utf8,uid=1000,gid=1000,dmask=022,fmask=022 0   0
    ```
        UUID 使用 lsblk -f 查询
        ntfs 系统文件类型，在 fdisk -l 可以查询
        关于权限 022 是为了 drwxr-xr-x
<br/>

* 重启
    ```shell <.line-numbers>
    reboot now
    ```
<br/>

* 退出 root 用户，其实一般重启就退出了，不过要是还是 root
    ```shell <.line-numbers>
    sudo [用户名]
    ```
<br/>

* 创建软链接
    ```shell <.line-numbers>
    ln -s /mnt/[文件名]  [自定义的快捷方式名]
    ```