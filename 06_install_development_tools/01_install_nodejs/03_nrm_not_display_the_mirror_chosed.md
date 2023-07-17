# nrm 不显示选择的镜像

参考：[安装nrm以及解决其跳转国内镜像源不显示问题](https://blog.csdn.net/qq_51644702/article/details/124703025)

``` shell
whereis node_modules
```

``` shell
sudo emacs /usr/local/lib/node_modules/nrm/cli.js
```

第211行

``` js
if (hasOwnProperty(customRegistries, name) && (name in registries || customRegistries[name].registry === registry.registry)) {
    // ...
}
```

&& 修改成 ||

```js
if (hasOwnProperty(customRegistries, name) || (name in registries || customRegistries[name].registry === registry.registry)) {
    // ...
}
```
