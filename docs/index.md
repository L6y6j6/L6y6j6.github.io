---
hide:
    - date
home: true
# template: home.html
statistics: true
---

<h1 align="center"><strong>o(〃'▽'〃)o Hi there!</strong></h1>

<h2 align="center">欢迎来到 LYJ 的个人笔记本！</h2>

<!-- [:octicons-info-16: 关于我](about/) /  -->
[:material-clock-time-two-outline: 最近更新](changelog.html) /
[:octicons-link-16: 朋友们!](links.html) /
[:material-chart-line: 站点统计](javascript:toggle_statistics();)

### 简介

这是一个非常粗糙的[**在线公开笔记本**](https://l6y6j6.github.io/mydocs/)，主要用来记录和备份平日学到的东西。

Repo 地址在这里：[:material-github: **Notebook**](https://github.com/L6y6j6/L6y6j6.github.io)。

本笔记本使用 [**MkDocs**](https://www.mkdocs.org/) 构建，采用 [**Material for MkDocs**](https://squidfunk.github.io/mkdocs-material/) 主题。中文字体是[**霞鹜文楷屏幕阅读版**](https://github.com/lxgw/LxgwWenKai-Screen)，英文字体是 [**JetBrains Mono**](https://www.jetbrains.com/lp/mono/)。

欢迎 Fork 和 Star，也欢迎各位大佬提出 Issue 和 PR！

### 在线阅读

本项目托管在 [:material-github: GitHub Pages](https://pages.github.com/) 上，可以通过 [https://l6y6j6.github.io/mydocs/](https://l6y6j6.github.io/mydocs/) 在线阅读。

### 本地构建部署

如果你想在本地构建并部署这个项目，可以按照以下步骤操作：

首先请确保你已经安装了 [Python](https://www.python.org/) 和 [pip](https://pypi.org/project/pip/)。

1. 克隆项目到本地并切换到项目目录：

```bash linenums="1"
git clone https://github.com/L6y6j6/L6y6j6.github.io.git
cd L6y6j6.github.io
```

2. 创建并激活虚拟环境：

```bash linenums="1"
python3 -m venv . # 在当前目录创建虚拟环境
source bin/activate # 激活虚拟环境（Linux，macOS）
# 或者
.\Scripts\activate # 激活虚拟环境（Windows）
```

3. 安装依赖：

```bash linenums="1"
pip install -r requirements.txt
```

4. 构建并启动项目：

```bash linenums="1"
mkdocs serve
```

5. 在浏览器中预览

打开浏览器，输入 `http://127.0.0.1:8000/mydocs/` 即可预览。

### 声明

本笔记本的所有文章均遵循[中文技术文档的写作规范](https://github.com/ruanyf/document-style-guide)



<div id="statistics" markdown="1" class="card" style="width: 27em; border-color: transparent; opacity: 0; font-size: 75%">
<div style="padding-left: 1em;" markdown="1">
页面总数：{{pages}}  
总字数：{{words}}  
代码块行数：{{codes}}  
网站运行时间：<span id="web-time"></span>
</div>
</div>


<script>
function updateTime() {
    var date = new Date();
    var now = date.getTime();
    var startDate = new Date("2024/07/07 12:45:00");
    var start = startDate.getTime();
    var diff = now - start;
    var y, d, h, m;
    y = Math.floor(diff / (365 * 24 * 3600 * 1000));
    diff -= y * 365 * 24 * 3600 * 1000;
    d = Math.floor(diff / (24 * 3600 * 1000));
    h = Math.floor(diff / (3600 * 1000) % 24);
    m = Math.floor(diff / (60 * 1000) % 60);
    if (y == 0) {
        document.getElementById("web-time").innerHTML = d + "<span class=\"heti-spacing\"> </span>天<span class=\"heti-spacing\"> </span>" + h + "<span class=\"heti-spacing\"> </span>小时<span class=\"heti-spacing\"> </span>" + m + "<span class=\"heti-spacing\"> </span>分钟";
    } else {
        document.getElementById("web-time").innerHTML = y + "<span class=\"heti-spacing\"> </span>年<span class=\"heti-spacing\"> </span>" + d + "<span class=\"heti-spacing\"> </span>天<span class=\"heti-spacing\"> </span>" + h + "<span class=\"heti-spacing\"> </span>小时<span class=\"heti-spacing\"> </span>" + m + "<span class=\"heti-spacing\"> </span>分钟";
    }
    setTimeout(updateTime, 1000 * 60);
}
updateTime();
function toggle_statistics() {
    var statistics = document.getElementById("statistics");
    if (statistics.style.opacity == 0) {
        statistics.style.opacity = 1;
    } else {
        statistics.style.opacity = 0;
    }
}
</script>