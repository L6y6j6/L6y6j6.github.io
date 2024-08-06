# 站点示例

本篇文章是自己给自己的一份备忘录，用于记录 [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) 主题的使用方法及预览效果，也可以为新手提供一些参考。

## 页面设置

### 页面标题

每个页面都有一个指定的标题，该标题用于导航侧边栏、社交卡片和其他地方。你可以使用 front matter title 属性显式设置标题：

```markdown
---
title: Lorem ipsum dolor sit amet
---

# Page title
...
```

### 页面描述

Markdown 文件可以包含添加到页面的元标记中的描述，如果作者没有明确定义 Markdown 文件的描述，那么在 mkdocs.yml 中设置一个 site_description 作为回退值是一个好主意：

```markdown
---
description: Nullam urna elit, malesuada eget finibus ut, ac tortor.
---

# Page title
...
```

### 页面图标

可以为每个页面分配一个图标，然后将其呈现为导航侧边栏的一部分，如果启用，还可以呈现为导航选项卡的一部分。

```markdown
---
icon: material/emoticon-happy
---

# Page title
...
```

### 页面状态

可以为每个页面分配状态，然后将其作为导航侧边栏的一部分显示。

首先，通过将以下内容添加到 mkdocs.yml，将状态标识符与说明相关联：

```yaml
extra:
  status:
    # <identifier>: <description>
    new: Recently added
```

```markdown
---
status: new
---

# Page title
...
```

以下状态标识符已经预设：

- :material-new: `new` - 最新添加

:material-trash-can: `deprecated` - 已弃用

### 页面模板

如果您正在使用主题扩展并在 `overrides` 目录中创建了新的页面模板，则可以为特定页面启用它。在 Markdown 文件的顶部添加以下行：

```markdown
---
template: custom.html
---

# Page title
...
```

> 借助内置的 `meta` 插件，您可以通过在相应的文件夹中创建一个包含以下内容的 `.meta.yml` 文件，为整个部分和所有嵌套页面设置自定义模板：
> ```yaml
> template: custom.html
> ```

## 标注

### 标注图标

每种受支持的标注类型都有一个不同的图标，可以将其更改为与主题捆绑的任何图标，甚至是自定义图标。将以下行添加到 `mkdocs.yml`：

```yaml
theme:
  icon:
    admonition:
      <type>: <icon>
```

### 标注用法

一块文字以 `!!!` 开头，后跟一个空格和用作类型限定符的关键字(note, abstract, info, tip, success, question, warning, failure, danger, bug, example, quote)。块的内容紧随其后，由四个空格缩进：

```markdown
!!! note

    帝高阳之苗裔兮，朕皇考曰伯庸。
    
    摄提贞于孟陬兮，惟庚寅吾以降。
    
    皇览揆余初度兮，肇锡余以嘉名。
```

!!! note

    帝高阳之苗裔兮，朕皇考曰伯庸。
    
    摄提贞于孟陬兮，惟庚寅吾以降。
    
    皇览揆余初度兮，肇锡余以嘉名。

```markdown
!!! abstract

    名余曰正则兮，字余曰灵均。
    纷吾既有此内美兮，又重之以修能。
    扈江离与辟芷兮，纫秋兰以为佩。
```

!!! abstract

    名余曰正则兮，字余曰灵均。
    纷吾既有此内美兮，又重之以修能。
    扈江离与辟芷兮，纫秋兰以为佩。


```markdown
!!! info

    汩余若将不及兮，恐年岁之不吾与。
    朝搴阰之木兰兮，夕揽洲之宿莽。
    日月忽其不淹兮，春与秋其代序。
```

!!! info

    汩余若将不及兮，恐年岁之不吾与。
    朝搴阰之木兰兮，夕揽洲之宿莽。
    日月忽其不淹兮，春与秋其代序。

```markdown
!!! tip

    惟草木之零落兮，恐美人之迟暮。
    不抚壮而弃秽兮，何不改此度？
    乘骐骥以驰骋兮，来吾道夫先路！
```

!!! tip

    惟草木之零落兮，恐美人之迟暮。
    不抚壮而弃秽兮，何不改此度？
    乘骐骥以驰骋兮，来吾道夫先路！

```markdown
!!! success

    昔三后之纯粹兮，固众芳之所在。
    杂申椒与菌桂兮，岂惟纫夫蕙茝！
    彼尧、舜之耿介兮，既遵道而得路。
```

!!! success

    昔三后之纯粹兮，固众芳之所在。
    杂申椒与菌桂兮，岂惟纫夫蕙茝！
    彼尧、舜之耿介兮，既遵道而得路。

```markdown
!!! question

    何桀纣之猖披兮，夫唯捷径以窘步。
    惟夫党人之偷乐兮，路幽昧以险隘。
    岂余身之惮殃兮，恐皇舆之败绩！
```

!!! question

    何桀纣之猖披兮，夫唯捷径以窘步。
    惟夫党人之偷乐兮，路幽昧以险隘。
    岂余身之惮殃兮，恐皇舆之败绩！

```markdown
!!! warning

    忽奔走以先后兮，及前王之踵武。
    荃不查余之中情兮，反信谗而齌怒。
    余固知謇謇之为患兮，忍而不能舍也。
```

!!! warning

    忽奔走以先后兮，及前王之踵武。
    荃不查余之中情兮，反信谗而齌怒。
    余固知謇謇之为患兮，忍而不能舍也。

```markdown
!!! failure

    指九天以为正兮，夫唯灵修之故也。
    曰黄昏以为期兮，羌中道而改路！
    初既与余成言兮，后悔遁而有他。
```

!!! failure

    指九天以为正兮，夫唯灵修之故也。
    曰黄昏以为期兮，羌中道而改路！
    初既与余成言兮，后悔遁而有他。

```markdown
!!! danger

    余既不难夫离别兮，伤灵修之数化。
    余既滋兰之九畹兮，又树蕙之百亩。
    畦留夷与揭车兮，杂杜衡与芳芷。
```

!!! danger

    余既不难夫离别兮，伤灵修之数化。
    余既滋兰之九畹兮，又树蕙之百亩。
    畦留夷与揭车兮，杂杜衡与芳芷。

```markdown
!!! bug

    冀枝叶之峻茂兮，愿俟时乎吾将刈。
    虽萎绝其亦何伤兮，哀众芳之芜秽。
    众皆竞进以贪婪兮，凭不厌乎求索。
```

!!! bug

    冀枝叶之峻茂兮，愿俟时乎吾将刈。
    虽萎绝其亦何伤兮，哀众芳之芜秽。
    众皆竞进以贪婪兮，凭不厌乎求索。

```markdown
!!! example

    羌内恕己以量人兮，各兴心而嫉妒。
    忽驰骛以追逐兮，非余心之所急。
    老冉冉其将至兮，恐修名之不立。
```

!!! example

    羌内恕己以量人兮，各兴心而嫉妒。
    忽驰骛以追逐兮，非余心之所急。
    老冉冉其将至兮，恐修名之不立。

```markdown
!!! quote

    朝饮木兰之坠露兮，夕餐秋菊之落英。
    苟余情其信姱以练要兮，长顑颔亦何伤。
    掔木根以结茝兮，贯薜荔之落蕊。
```

!!! quote

    朝饮木兰之坠露兮，夕餐秋菊之落英。
    苟余情其信姱以练要兮，长顑颔亦何伤。
    掔木根以结茝兮，贯薜荔之落蕊。

### 更改标题

默认情况下，title 将等于 titlecase 中的类型限定符。但是，可以通过在类型限定符后添加包含有效 Markdown（包括链接、格式设置等）的带引号的字符串来更改它：

```markdown
!!! note "滕王阁序"

    豫章故郡，洪都新府。星分翼轸，地接衡庐。襟三江而带五湖，控蛮荆而引瓯越。物华天宝，龙光射牛斗之墟；人杰地灵，徐孺下陈蕃之榻。雄州雾列，俊采星驰。台隍枕夷夏之交，宾主尽东南之美。都督阎公之雅望，棨戟遥临；宇文新州之懿范，襜帷暂驻。十旬休假，胜友如云；千里逢迎，高朋满座。腾蛟起凤，孟学士之词宗；紫电青霜，王将军之武库。家君作宰，路出名区；童子何知，躬逢胜饯。
```

!!! note "滕王阁序"

    豫章故郡，洪都新府。星分翼轸，地接衡庐。襟三江而带五湖，控蛮荆而引瓯越。物华天宝，龙光射牛斗之墟；人杰地灵，徐孺下陈蕃之榻。雄州雾列，俊采星驰。台隍枕夷夏之交，宾主尽东南之美。都督阎公之雅望，棨戟遥临；宇文新州之懿范，襜帷暂驻。十旬休假，胜友如云；千里逢迎，高朋满座。腾蛟起凤，孟学士之词宗；紫电青霜，王将军之武库。家君作宰，路出名区；童子何知，躬逢胜饯。

### 删除标题

```markdown
!!! note ""

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

!!! note ""

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

### 可折叠块

## 注释

## 按钮

## 代码块

## 选项卡

## 表格

## 图表

## 脚注

## 格式化

## 网格

## 图标与 Emoji

## 图片

## 列表

## 数学公式

## 工具提示

## 参考文档

- Reference of Material for MkDocs: [https://squidfunk.github.io/mkdocs-material/reference/](https://squidfunk.github.io/mkdocs-material/reference/)
- MkDocs 教程: [https://wcowin.work/](https://wcowin.work/)