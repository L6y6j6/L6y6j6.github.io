#!/bin/bash

# 退出时如果有错误则终止脚本
set -e

# 激活 Python 虚拟环境
source bin/activate

# 构建 MkDocs 网站
mkdocs build

# 创建一个临时目录用于克隆 gh-pages 分支
temp_dir=$(mktemp -d)

# 克隆仓库的 gh-pages 分支到临时目录
git clone -b gh-pages --single-branch https://github.com/L6y6j6/L6y6j6.github.io.git $temp_dir

# 创建目标目录（如果不存在）
mkdir -p $temp_dir/mydocs

# 将生成的站点内容复制到目标目录
cp -r site/* $temp_dir/mydocs

# 提交并推送更改
cd $temp_dir
git add .
git commit -m "complete notebook structure"
git push origin gh-pages

# 清理临时目录
rm -rf $temp_dir
