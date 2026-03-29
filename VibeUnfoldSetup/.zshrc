function pl() {
    local CURRENT_DIR="$PWD"

    echo "🚀 正在启动工作流: $CURRENT_DIR"

    osascript <<EOF
tell application "Ghostty"
    activate
    delay 0.2
end tell

tell application "System Events"
    -- ==========================
    -- 左半屏：crush
    -- ==========================
    keystroke "crush"
    delay 0.1
    keystroke return
    delay 0.3

    -- ==========================
    -- 垂直分屏 (Cmd+D) -> 右半屏
    -- ==========================
    keystroke "d" using {command down}
    delay 0.3

    -- ==========================
    -- 右半屏 - 上：ls
    -- ==========================
    keystroke "ls"
    delay 0.1
    keystroke return
    delay 0.3

    -- ==========================
    -- 水平分屏 (Cmd+Shift+D) -> 右下半
    -- ==========================
    keystroke "d" using {command down, shift down}
    delay 0.3

    -- ==========================
    -- 右半屏 - 中：bash
    -- ==========================
    keystroke "yazi"
    delay 0.1
    keystroke return
    delay 0.3

    -- ==========================
    -- 水平分屏 (Cmd+Shift+D) -> 最下
    -- ==========================
    keystroke "d" using {command down, shift down}
    delay 0.3

    -- ==========================
    -- 右半屏 - 下：lazygit
    -- ==========================
    keystroke "lazygit"
    delay 0.1
    keystroke return
    delay 0.3

    -- ==========================
    -- 切回左半屏 (Cmd+[ 三次)
    -- ==========================
    repeat 3 times
        keystroke "[" using {command down}
        delay 0.1
    end repeat
end tell
EOF

    echo "✅ 完成！"
}