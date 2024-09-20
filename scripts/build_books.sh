#!/bin/bash

# install ebook-convert and calibre
sudo apt update
sudo apt install libegl1
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
sudo apt-get install calibre

mkdir -p ./_book/ebooks

# 设置书籍名称变量
bookname="yusheng-zhang-archive"

# 创建目标目录
mkdir -p ./_book/ebooks

# 生成 EPUB 文件
honkit epub ./ ./_book/ebooks/${bookname}.epub

# 因为直接生成 pdf 文件无法显示汉字，所以从 epub 转 pdf
ebook-convert ./_book/ebooks/${bookname}.epub ./_book/ebooks/${bookname}.pdf

# 生成 MOBI 文件
honkit mobi ./ ./_book/ebooks/${bookname}.mobi