# TFSCheckout

vim插件，可在vim中签出TFS代码件。

## 配置项

```vim
let g:tf = '"D:\Program Files\Microsoft Visual Studio 12.0\Common7\IDE\TF.exe"'
let g:tf_login = ' /login:[user],[password]'
```

## 使用
- 在文件编辑窗口输入 :TFSCheckout 命令（输入TFS按<Tab>可补全）
- 在NerdTree上按m出菜单，选择 TFS Check (o)ut
