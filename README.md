# LYJ's Notebook

English | [简体中文](./README.zh-CN.md)

This is a **very rough** [online public notebook 📝](https://l6y6j6.github.io/mydocs/), mainly used to record and back up things learned daily.

This notebook is built using [MkDocs](https://www.mkdocs.org/) and uses the [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) theme. The Chinese font is [LXGW WenKai Screen](https://github.com/lxgw/LxgwWenKai-Screen), and the English font is [JetBrains Mono](https://www.jetbrains.com/lp/mono/).

Welcome to Fork and Star, and feel free to raise Issues and PRs!

## Online Reading

This project is hosted on GitHub Pages and can be read online at [https://l6y6j6.github.io/mydocs/](https://l6y6j6.github.io/mydocs/).

## Local Build and Deployment

If you want to build and deploy this project locally, you can follow these steps:

First, make sure you have [Python](https://www.python.org/) and [pip](https://pypi.org/project/pip/) installed.

1. Clone the project locally and switch to the project directory:

```bash
git clone https://github.com/L6y6j6/L6y6j6.github.io.git
cd L6y6j6.github.io
```

2. Create and activate a virtual environment:

```bash
python3 -m venv . # Create a virtual environment in the current directory
source bin/activate # Activate the virtual environment (Linux, macOS)
# or
.\Scripts\activate # Activate the virtual environment (Windows)
```

3. Install dependencies:

```bash
pip install -r requirements.txt
```

4. Build and start the project:

```bash
mkdocs serve
```

5. Preview in the browser

Open your browser and enter `http://127.0.0.1:8000/mydocs/` to preview.