# yazi 设置

## 显示隐藏文件
默认的yazi不显示隐藏文件(`.`开头的文件)。

但是你是黑客，必须显示隐藏文件，必须牛逼。

一般，yazi的config会在`~/.config/yazi`目录下。

你需要在`~/.config/yazi/yazi.toml`文件中添加以下内容：
```toml
[mgr]
show_hidden = true
```

别傻呵呵地用文本编辑器。直接
```
echo "[mgr]\nshow_hidden = true" > ~/.config/yazi/yazi.toml
```
我的yazi.toml:[yazi.toml](yazi.toml)

## 一键导航
在yazi TUI中，你可以
- 用⬅️/➡️来进入上/下一级目录。
- 用⬆️/⬇️来切换文件。
- 用鼠标选择文件。
- 按q退出yazi TUI。
- 尽量别按Enter键，否则会进入文件。

屌爆了的魔法：把bash的pwd快速转移到yazi显示的目录。

在~/.zshrc中添加以下内容(继续echo)：
```bash
y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}
```
现在，你直接输入y，在yazi界面中导航到你要去的目录，然后按q。

这时，你终端指向的pwd就是你导航到的目录。