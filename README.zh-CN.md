# LYJ 的笔记本

[English](./README.md) | 简体中文

<div align="center">

[![Auth](https://img.shields.io/badge/Auth-LYJ-ff69b4)](https://github.com/LightYourJourney)
[![GitHub Issues](https://img.shields.io/github/issues/L6y6j6/L6y6j6.github.io.svg)](https://github.com/L6y6j6/L6y6j6.github.io/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/L6y6j6/L6y6j6.github.io)](https://github.com/L6y6j6/L6y6j6.github.io/pulls)
[![GitHub Pull Requests](https://img.shields.io/github/stars/L6y6j6/L6y6j6.github.io)](https://github.com/L6y6j6/L6y6j6.github.io/stargazers)
[![GitHub license](https://img.shields.io/github/license/L6y6j6/L6y6j6.github.io)](https://github.com/L6y6j6/L6y6j6.github.io/blob/main/LICENSE)
[![HitCount](https://views.whatilearened.today/views/github/L6y6j6/L6y6j6.github.io.svg)](https://github.com/L6y6j6/L6y6j6.github.io)

</div>

<div align="center">
<img src="https://cdn.jsdelivr.net/gh/eryajf/tu@main/img/image_20240420_214408.gif" width="800"  height="3">
</div><br>

这是一个**非常粗糙**的[在线公开笔记本 📝](https://l6y6j6.github.io/mydocs/)，主要用来记录和备份平日学到的东西。

本笔记本使用 [MkDocs](https://www.mkdocs.org/) 构建，采用 [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) 主题。中文字体是[霞鹜文楷屏幕阅读版](https://github.com/lxgw/LxgwWenKai-Screen)，英文字体是 [JetBrains Mono](https://www.jetbrains.com/lp/mono/)。

欢迎 Fork 和 Star，也欢迎提出 Issue 和 PR！

## 在线阅读

本项目托管在 GitHub Pages 上，可以通过 [https://l6y6j6.github.io/mydocs/](https://l6y6j6.github.io/mydocs/) 在线阅读。

## 本地构建部署

如果你想在本地构建并部署这个项目，可以按照以下步骤操作：

首先请确保你已经安装了 [Python](https://www.python.org/) 和 [pip](https://pypi.org/project/pip/)。

1. 克隆项目到本地并切换到项目目录：

```bash
git clone https://github.com/L6y6j6/L6y6j6.github.io.git
cd L6y6j6.github.io
```

2. 创建并激活虚拟环境：

```bash
python3 -m venv . # 在当前目录创建虚拟环境
source bin/activate # 激活虚拟环境（Linux，macOS）
# 或者
.\Scripts\activate # 激活虚拟环境（Windows）
```

3. 安装依赖：

```bash
pip install -r requirements.txt
```

4. 构建并启动项目：

```bash
mkdocs serve
```

5. 在浏览器中预览

打开浏览器，输入 `http://127.0.0.1:8000/mydocs/` 即可预览。

## 声明

本笔记本的所有文章均遵循[中文技术文档的写作规范](https://github.com/ruanyf/document-style-guide)