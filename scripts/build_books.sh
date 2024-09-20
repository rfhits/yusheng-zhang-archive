#!/bin/bash
sudo apt update
sudo apt install libegl1

# install ebook-convert
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
sudo  apt-get update
sudo apt-get install calibre

# # install honkit etc.
# SCRIPT_DIR=$(dirname "$(realpath "$0")")
# chmod +x "$SCRIPT_DIR/install_packages.sh"
# "$SCRIPT_DIR/install_packages.sh"


pwd
mkdir -p ./_book/ebooks
echo "/books Created"

# 生成 PDF 文件
honkit pdf ./ ./_book/ebooks/yusheng-zhang-archive.pdf

# 生成 EPUB 文件
honkit epub ./ ./_book/ebooks/yusheng-zhang-archive.epub

# 生成 MOBI 文件
honkit mobi ./ ./_book/ebooks/yusheng-zhang-archive.mobi