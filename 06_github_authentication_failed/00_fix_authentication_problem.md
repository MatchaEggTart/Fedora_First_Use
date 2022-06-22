# Authentication Problem

## 为什么会出现

   * 因为账号密码并不安全，反而TOKEN或者SSH比较安全

## 如何设置 TOKEN

   很简单，但不建议

   * 修改 remote

   ``` shell
   git remote set-url origin https://<TOKEN>@github.com/<USERNAME>/<REPO>.git
   ```

## 如何设置 SSH

   * 生成 SSH KEY

   ``` shell
   ssh-keygen -t rsa -C "email@example.com"
   ```

   * 设置 SSH KEY 权限

   ``` shell
   chmod 600 ~/.ssh/id_rsa
   chmod 600 ~/.ssh/id_rsa.pub
   chmod 700 ~/.ssh
   ```

# 如何使用 公钥下载

  * 使用 git

  ``` shell
  git clone git@github.com:<USERNAME>/<REPO>.git
  ```

# 如何将 https 修改为 ssh

  * 查看 关联

  ``` shell
  git remote -v
  ```

  * 删除关联

  ``` shell
  git remote rm origin
  ```

  * 添加关联

  ``` shell
  git remote add origin git@github.com:<USERNAME>/<REPO>.git
  ```

  * 或者 直接替换关联

  ``` shell
  git remote set-url origin git@github.com:<USERNAME>/<REPO>.git
  ```

  * 再次连接，查看是否更改

  ``` shell
  git push -u origin master
  git remote -v
  ```

  * 验证

  ``` shell
  git pull
  ```

## 修改仓库名

   * 修改仓库名

   ``` shell
   git remote rename [old_name] [new_name]
   ```

