# 《我也來學 $\LaTeX$》

這是一本由一個高中生在自主學習中寫出的書籍。

## 概覽

《我也來學 $\LaTeX$》是為了對抗中文 $\LaTeX$ 資料稀少的產物，撰寫本書的目的是希望可以提供一個供初學者系統性的學習 $\LaTeX$ 的管道。

目前書中的目錄如下：

1. 一些有趣的故事
2. $\LaTeX$ 簡介
3. 中文環境配置
4. 版面配置
5. 圖片與表格
6. 數學
7. xcolor
8. 化學
9. listing
10. tcolorbox
11. TikZ
12. pgfplots
13. 用Beamer做簡報
14. biblatex
15. animate
16. lualatex
17. LuaLaTeX做動畫
18. 自定義命令與環境
19. etoolbox
20. 繼續前行
21. BeyondLaTeX

## 下載

想下載本書的電子版有兩種方式：

* 去 Release 下載最新的版本
* 自行下載編譯

自行下載編譯有以下要求：

* TeX Distribution(TeX Live or MikTeX)
* pygment

請先下載最新版的 pygment 

```
pip install pygment
```

然後下載整個 github 儲存庫

```git
git clone https://github.com/simanglam/LaTeXNote.git
```

接者執行

```bash
cd LaTeXNote
xelatex -shell-escape main.tex
```

即可得到本書的電子檔 main.pdf 。


