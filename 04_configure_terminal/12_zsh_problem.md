# 问题集合

* fzf_setup_using_debian:source:40: no such file or directory: /usr/share/doc/fzf/examples/key-bindings.zsh

  * HOW

    ``` sh
    find /  -name "key-bindings.zsh"
    sudo mkdir -p /usr/share/doc/fzf/examples/
    sudo cp /usr/share/fzf/shell/key-bindings.* /usr/share/doc/fzf/examples
    ```
