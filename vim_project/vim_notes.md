+ **保存配置修改，写在配置文件里：
    vim ~/.vimrc        # 用vim   ~/ 表示打开当前用户的根目录； .vimrc是vim的配置文件**

* 可以再GitHub上面找到别人配置好的.vimrc文件：直接再GitHub上搜 **.vimrc** 关键字即可


>> 配置文件内容
+ 语法高亮：syntax on / off
+ 显示行号：set number

1. w / b     **下/上一个单词**
2. ctrl+F / ctrl+B **下/上翻页**
3. 跳到指定行前： 行数+gg   例如跳到13行命令输入：13gg
4. 往上下左右移动指定行/列： 数字+ k / j / h / l    例如往下移动5行：5h
5. 快速查找：命令行模式下：/**  (**表示查找内容)    例如查找Hello：/Hello 
        按下回车，找到所有的查找内容：按n键查找下一个,shift+n查找上一个
6. 撤销操作：u (表示undo)
7. 剪切整行：cc (执行之后会进入insert模式)
     连续删除n行：cnc n为数字，表示连续删除往下n行，例如删除连续两行：c2c
     复制当前行：yy
     粘贴：p 进行粘贴

8. **Visual** 模式：按下v键，移动光标进行选择(之后可以进行删除，剪切等文本编辑)
9. 代码补全：ctrl+n 
10. 跳到最后一行：1. 9999gg 
        或者 2. shift+g

11. 插件管理系统：vimplug

12. 关于vim的复制粘贴快捷操作：https://blog.csdn.net/feng98ren/article/details/80509607