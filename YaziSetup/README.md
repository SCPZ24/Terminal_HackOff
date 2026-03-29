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
