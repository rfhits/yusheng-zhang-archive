# 确保 sudo 权限
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
ls
chmod +x ./install_packages.sh
./install_packages.sh

# 定义目标目录
targetDir="./_book/ebooks"

# 检查目标目录是否存在
if [ ! -d "$targetDir" ]; then
    echo "Creating directory: $targetDir"
    mkdir -p "$targetDir"  # 使用 -p 选项以确保创建父目录
else
    echo "Directory $targetDir already exists, skipping creation."
fi

# 生成 PDF 文件
honkit pdf ./_book/ebooks/yusheng-zhang-archive.pdf

# 生成 EPUB 文件
honkit epub ./_book/ebooks/yusheng-zhang-archive.epub

# 生成 MOBI 文件
honkit mobi ./_book/ebooks/yusheng-zhang-archive.mobi