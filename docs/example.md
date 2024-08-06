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

    时维九月，序属三秋。潦水尽而寒潭清，烟光凝而暮山紫。俨骖騑于上路，访风景于崇阿。临帝子之长洲，得天人之旧馆。层峦耸翠，上出重霄；飞阁流丹，下临无地。鹤汀凫渚，穷岛屿之萦回；桂殿兰宫，即冈峦之体势。
```

!!! note ""

    时维九月，序属三秋。潦水尽而寒潭清，烟光凝而暮山紫。俨骖騑于上路，访风景于崇阿。临帝子之长洲，得天人之旧馆。层峦耸翠，上出重霄；飞阁流丹，下临无地。鹤汀凫渚，穷岛屿之萦回；桂殿兰宫，即冈峦之体势。

### 可折叠块

__当以 `???` 而不是 `!!!` 开头时，标注将呈现为可折叠的块（默认折叠）__，右侧有一个小开关：

```markdown
??? note

    披绣闼，俯雕甍，山原旷其盈视，川泽纡其骇瞩。闾阎扑地，钟鸣鼎食之家；舸舰弥津，青雀黄龙之舳。云销雨霁，彩彻区明。落霞与孤鹜齐飞，秋水共长天一色。渔舟唱晚，响穷彭蠡之滨，雁阵惊寒，声断衡阳之浦。
```

??? note

    披绣闼，俯雕甍，山原旷其盈视，川泽纡其骇瞩。闾阎扑地，钟鸣鼎食之家；舸舰弥津，青雀黄龙之舳。云销雨霁，彩彻区明。落霞与孤鹜齐飞，秋水共长天一色。渔舟唱晚，响穷彭蠡之滨，雁阵惊寒，声断衡阳之浦。

在 `???` 标记后添加 `+` 会使标注块默认展开：

```markdown
???+ note

    遥襟甫畅，逸兴遄飞。爽籁发而清风生，纤歌凝而白云遏。睢园绿竹，气凌彭泽之樽；邺水朱华，光照临川之笔。四美具，二难并。穷睇眄于中天，极娱游于暇日。天高地迥，觉宇宙之无穷；兴尽悲来，识盈虚之有数。望长安于日下，目吴会于云间。地势极而南溟深，天柱高而北辰远。关山难越，谁悲失路之人；萍水相逢，尽是他乡之客。怀帝阍而不见，奉宣室以何年？
```

???+ note

    遥襟甫畅，逸兴遄飞。爽籁发而清风生，纤歌凝而白云遏。睢园绿竹，气凌彭泽之樽；邺水朱华，光照临川之笔。四美具，二难并。穷睇眄于中天，极娱游于暇日。天高地迥，觉宇宙之无穷；兴尽悲来，识盈虚之有数。望长安于日下，目吴会于云间。地势极而南溟深，天柱高而北辰远。关山难越，谁悲失路之人；萍水相逢，尽是他乡之客。怀帝阍而不见，奉宣室以何年？

### 内联块

标注也可以呈现为内联块（e.g. 侧边栏），使用 `inline` + `end` 修饰符将它们放在右边，或者仅使用 `inline` 修饰符将它们放在左边：

```markdown
!!! info inline end "滕王阁序"

    嗟乎！时运不齐，命途多舛。冯唐易老，李广难封。屈贾谊于长沙，非无圣主；窜梁鸿于海曲，岂乏明时？
```

!!! info inline end "滕王阁序"

    嗟乎！时运不齐，命途多舛。冯唐易老，李广难封。屈贾谊于长沙，非无圣主；窜梁鸿于海曲，岂乏明时？

!!! info inline "滕王阁序"

    所赖君子见机，达人知命。老当益壮，宁移白首之心？穷且益坚，不坠青云之志。酌贪泉而觉爽，处涸辙以犹欢。

```markdown
!!! info inline "滕王阁序"

    所赖君子见机，达人知命。老当益壮，宁移白首之心？穷且益坚，不坠青云之志。酌贪泉而觉爽，处涸辙以犹欢。
```

> 重要提示：使用 `inline` 修饰符的标注必须在你要将它们放在旁边的内容块之前声明。如果没有足够的空间在块旁边呈现标注，标注将延伸到整个视宽。

## 注释

### 注释图标

`Material for MkDocs` 主题最突出的功能之一就是能够注入注释 —— 你几乎可以在文档的任何地方添加的小标记，并在单击时显示注释。

注释图标可以更改为与主题捆绑的任何图标，甚至可以更改为自定义图标，例如 `material/arrow-right-circle`。只需将以下行添加到 `mkdocs.yml` 中：

```yaml
theme:
  icon:
    annotation: material/arrow-right-circle
```

一些优秀的图标：

- :material-plus-circle: - `material/plus-circle`
- :material-circle-medium: - `material/circle-medium`
- :material-record-circle: - `material/record-circle`
- :material-arrow-right-circle: - `material/arrow-right-circle`
- :material-arrow-right-circle-outline: - `material/arrow-right-circle-outline`
- :material-chevron-right-circle: - `material/chevron-right-circle`
- :material-star-four-points-circle: - `material/star-four-points-circle`
- :material-plus-circle-outline: - `material/plus-circle-outline`

### 注释用法

#### 单层注释

源码：

```markdown
Science is more art than science, Morty. (1) A lot of people don't get that.
{ .annotate }

1.  :man_raising_hand: I'm an annotation! I can contain `code`, __formatted
    text__, images, ... basically anything that can be expressed in Markdown.
```

预览效果：

Science is more art than science, Morty. (1) A lot of people don't get that.
{ .annotate }

1.  :man_raising_hand: I'm an annotation! I can contain `code`, __formatted
    text__, images, ... basically anything that can be expressed in Markdown.

#### 嵌套注释

源码：

```markdown
Lorem ipsum dolor sit amet, (1) consectetur adipiscing elit.
{ .annotate }

1.  :man_raising_hand: I'm an annotation! (1)
    { .annotate }

    1.  :woman_raising_hand: I'm an annotation as well!
```

预览效果：

Nobody exists on purpose. (1) Nobody belongs anywhere.
{ .annotate }

1.  :man_raising_hand: Everybody's gonna die. (1)
    { .annotate }

    1.  :woman_raising_hand: Come watch TV. (1)
        { .annotate }

        1. 🛸🥼👽🔫 From *Rick and Morty*

#### 标注中的注释

标注的标题和正文还可以通过在类型限定符后添加 `annotate` 修饰符来托管注释，这类似于内联块的工作方式：

源码：

```markdown
!!! note annotate "Quote From *Rick and Morty* (1)"

    You wanted to be safe from the government (2) , so you became a stupid government.

1.  :man_raising_hand: I'm Rick!
2.  :woman_raising_hand: I'm Morty!
```

预览效果：

!!! note annotate "Quote From *Rick and Morty* (1)"

    You wanted to be safe from the government (2) , so you became a stupid government.

1.  🛸🥼🔫 I'm Rick!
2.  🍑𓂸 I'm Morty!

#### 选项卡中的注释

内容选项卡可以通过将注释类 `{ .annotate }` 添加到专用内容选项卡的块来托管注释。

示例源码：

```markdown
=== "Rick"

    (1) We both know that if there's any truth in the universe, Morty. it's that Ricks don't care about Mortys.
    { .annotate }

    1.  :man_raising_hand: I'm Rick!

=== "Morty"

    Very well. (1) Give the Earth people a spacecraft so they may head back to their weird planet, where women are kind of equal but not really.
    { .annotate }

    1.  :woman_raising_hand: You are DAMN right!
```

预览效果：

=== "Rick"

    (1) We both know that if there's any truth in the universe, Morty. it's that Ricks don't care about Mortys.
    { .annotate }

    1.  :man_raising_hand: I'm Rick!

=== "Morty"

    Very well. (1) Give the Earth people a spacecraft so they may head back to their weird planet, where women are kind of equal but not really.
    { .annotate }

    1.  :woman_raising_hand: You are DAMN right!

#### 其他内容中的注释

[属性列表](https://squidfunk.github.io/mkdocs-material/setup/extensions/python-markdown/#attribute-lists)扩展是向大多数元素添加注释的关键要素，但它有一些[限制](https://python-markdown.github.io/extensions/attr_list/#limitations)。但是，始终可以利用 [Markdown in HTML 扩展](https://squidfunk.github.io/mkdocs-material/setup/extensions/python-markdown/#markdown-in-html) 来使用带有 `annotate` 类的 `div` 包装任意元素。

示例源码：

```markdown
<div class="annotate" markdown>

> Lorem ipsum dolor sit amet, (1) consectetur adipiscing elit.

</div>

1.  :man_raising_hand: I'm an annotation!
```

预览效果：

<div class="annotate" markdown>

> We are not them! (1) We are not...them.

</div>

1.  :man_raising_hand: I'm an annotation!

## 按钮

[Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) 为主要和次要按钮提供专用样式，可以添加到任何链接、标签或按钮元素中。这对于具有专用号召性用语的文档或登录页面特别有用。

### 添加按钮

为了将链接呈现为按钮，请在其后缀添加*大括号* `{}`，并向其添加 `.md-button` 类选择器。如果激活，该按钮将接收选定的*原色* (Primary Color) 和*强调色* (Accent Color)。

源码示例：

```markdown
[Go back to top!](#){ .md-button }
```

预览效果：

[Go back to top!](#){ .md-button }

### 添加主按钮

如果要显示已填充的主按钮（例如在 `Material for MkDocs` 的登录页面上），请添加 `.md-button` 和 `.md-button--primary` CSS 类选择器。

源码示例：

```markdown
[Go back to top!](#){ .md-button .md-button--primary }
```

预览效果：

[Go back to top!](#){ .md-button .md-button--primary }

### 添加图标按钮

可以通过使用图标语法和任何有效的图标短代码将图标添加到所有类型的按钮中。

源码示例：

```markdown
[Send :fontawesome-solid-paper-plane:](#){ .md-button }
```

[Send :fontawesome-solid-paper-plane:](#){ .md-button }

## 代码块

代码块和示例是技术项目文档的重要组成部分。`Material for MkDocs` 提供了不同的方法来设置代码块的语法高亮显示，无论是在使用 `Pygments` 构建期间还是在运行时使用 `JavaScript` 语法高亮器。

### 配置

此配置允许在代码块和内联代码块上突出显示语法，并允许直接包含来自其他文件的源代码。将以下行添加到 `mkdocs.yml`：

```yaml
markdown_extensions:
  - pymdownx.highlight:
      anchor_linenums: true
      line_spans: __span
      pygments_lang_class: true
  - pymdownx.inlinehilite
  - pymdownx.snippets
  - pymdownx.superfences
```

#### 代码复制按钮

代码块可以自动在右侧呈现一个按钮，允许用户将代码块的内容复制到剪贴板。将以下内容添加到 `mkdocs.yml` 以全局启用它们：

```yaml
theme:
  features:
    - content.code.copy
```

#### 代码注释

代码注释提供了一种舒适而友好的方式，通过在代码块的语言块中添加数字标记和内联注释，将任意内容附加到代码块的特定部分。将以下内容添加到 `mkdocs.yml` 以全局启用它们：

```yaml
theme:
  features:
    - content.code.annotate
```

### 代码块用法

代码块必须用包含三个反引号的两行单独的行括起来。要向这些块添加语法高亮显示，请直接在开始块之后添加语言短代码。请参阅[可用词法分析器列表](https://pygments.org/docs/lexers/)以查找给定语言的短代码：

源码示例：


&#96;&#96;&#96;py

import tensorflow as tf

&#96;&#96;&#96;

预览效果：

``` py
import tensorflow as tf
```

### 添加标题

为了提供额外的上下文，可以通过在短代码之后直接使用 `title="<custom title>"` 选项将自定义标题添加到代码块中，例如显示文件名。

源码示例：


&#96;&#96;&#96; py title="bubble_sort.py"

def bubble_sort(items):

    for i in range(len(items)):

        for j in range(len(items) - 1 - i):

            if items[j] > items[j + 1]:

                items[j], items[j + 1] = items[j + 1], items[j]

&#96;&#96;&#96;


预览效果：

``` py title="bubble_sort.py"
def bubble_sort(items):
    for i in range(len(items)):
        for j in range(len(items) - 1 - i):
            if items[j] > items[j + 1]:
                items[j], items[j + 1] = items[j + 1], items[j]
```

### 添加注释



## 选项卡

## 表格

## 图表

## 脚注

## 格式化

## 网格

`Material for MkDocs` 可以轻松地将部分排列成网格，将传达相似含义或同等重要性的块分组。网格非常适合构建索引页，这些索引页显示了文档大部分的简要概述。

网格有两种类型：卡片网格和通用网格，前者将每个元素包裹在悬停时悬浮的卡片中，后者允许将任意块元素排列成矩形形状。

## 图标与 Emoji

🔍 搜索图标和 Emoji: [https://squidfunk.github.io/mkdocs-material/reference/icons-emojis/](https://squidfunk.github.io/mkdocs-material/reference/icons-emojis/)

### 表情符号

可以通过将表情符号的短代码放在两个冒号之间来将表情符号集成到 `Markdown` 中。如果您正在使用 [Twemoji](https://github.com/twitter/twemoji)（推荐），您可以在 [Emojipedia](https://emojipedia.org/twitter/) 上查找短代码。

源码示例：

```markdown
:smile:
```

预览效果：

:smile:

### 图标

启用 `Emoji` 后，图标可以类似于 `emojis` 使用，方法是引用与主题捆绑的任何图标的有效路径，这些图标位于 `.icons` 目录中，并将 `/` 替换为 `-`。

源码示例：

```markdown
:fontawesome-regular-face-laugh-wink:
```

预览效果：

:fontawesome-regular-face-laugh-wink:

#### 图标颜色

源码示例：

```markdown
:fontawesome-brands-youtube:{ .youtube }
```

预览效果：

:fontawesome-brands-youtube:{ .youtube }

#### 图标动画

与添加颜色类似，通过使用额外的样式表、定义 `@keyframes` 规则并向图标添加专用的 `CSS` 类。

源码示例：

```markdown
:octicons-heart-fill-24:{ .heart }
```

预览效果:

:octicons-heart-fill-24:{ .heart }

## 图片

虽然图像在 Markdown 中很重要，并且是核心语法的一部分，但在使用上可能有些困难。`Material for MkDocs` 使处理图像更加舒适，为图像对齐和图像标题提供样式。

### 图像对齐

启用 `Attribute Lists` 后，可以通过 `align` 属性添加相应的对齐方向来对齐图像，即 `align=left` 或 `align=right`。

源码示例：

```markdown
![Image title](https://dummyimage.com/600x400/eee/aaa){ align=left }
![Image title](https://dummyimage.com/600x400/eee/aaa){ align=right }
```

预览效果：

![Image title](https://dummyimage.com/600x400/eee/aaa){ align=left }

![Image title](https://dummyimage.com/600x400/eee/aaa){ align=right }

### 图像标题 / 图片说明

`Markdown` 语法没有为图像标题提供原生支持，但始终可以在 `HTML` 扩展中使用带有文字 `figure` 和 `figcaption` 标签的 `Markdown`。

源码示例：

```markdown
<figure markdown="span">
  ![Image title](https://dummyimage.com/600x400/){ width="300" }
  <figcaption>Image caption</figcaption>
</figure>
```

预览效果：

<figure markdown="span">
  ![Image title](https://dummyimage.com/600x400/){ width="300" }
  <figcaption>Image caption</figcaption>
</figure>

### 图片延迟加载

现代浏览器通过 `loading=lazy` 指令为延迟加载图像提供原生支持，该指令在不支持的浏览器中降级为 `eager-loading`。

源码示例：

```markdown
![Image title](https://dummyimage.com/600x400/){ loading=lazy }
```

预览效果：

![Image title](https://dummyimage.com/600x400/){ loading=lazy }

### 明暗模式

如果你希望为浅色和深色配色方案显示不同的图像，可以将 `#only-light` 或 `#only-dark` 哈希片段附加到图像 URL。

源码示例：

```markdown
![Image title](https://dummyimage.com/600x400/f5f5f5/aaaaaa#only-light)
![Image title](https://dummyimage.com/600x400/21222c/d5d7e2#only-dark)
```

预览效果：

![Image title](https://dummyimage.com/600x400/f5f5f5/aaaaaa#only-light)
![Image title](https://dummyimage.com/600x400/21222c/d5d7e2#only-dark)

## 列表

`Material for MkDocs` 支持多种风格的列表，以满足不同的用例，包括通过标准 `Markdown` 支持的无序列表和有序列表，以及通过扩展支持的定义列表和任务列表。

### 无序列表

可以通过在一行前面加上 `-`、`*` 或 `+` 列表标记来编写无序列表，所有这些都可以互换使用。此外，所有风格的列表都可以相互嵌套在彼此内部。

源码示例：

```markdown
- 来鹅城，我只办三件事：

    * 公平
    * 公平
    * 还是他妈的公平
```

预览效果：

- 来鹅城，我只办三件事：

    * 公平
    * 公平
    * 还是他妈的公平

### 有序列表

有序列表必须以一个数字开头，紧跟一个点。这些数字不需要是连续的，并且可以全部设置为 `1.`，因为它们在呈现时将被重新编号。

源码示例：

```markdown
1.  你给我翻译翻译

    1.  什么

    2.  叫做


        1.  他妈的
        2.  惊
        3.  喜
```

预览效果：

1.  你给我翻译翻译

    1.  什么

    2.  叫做


        1.  他妈的
        2.  惊
        3.  喜

### 定义列表

启用定义列表后，可以使用简单的语法枚举任意键值对的列表，例如函数或模块的参数。

源码示例：

```markdown
`RICK`

:   That's planning for failure, Morty. Even dumber than regular planning.

    Oh, get off your high horse, Professor Ski Lodge. This world may be rough around the edges, but it’s got its charms.

`MORTY`

:   Weddings are basically funerals with cake.

    That’s the three lines of math that separates my life as a man from my life as an unfeeling ghost.
```

预览效果：

`RICK`

:   That's planning for failure, Morty. Even dumber than regular planning.

    Oh, get off your high horse, Professor Ski Lodge. This world may be rough around the edges, but it’s got its charms.

`MORTY`

:   Weddings are basically funerals with cake.

    That’s the three lines of math that separates my life as a man from my life as an unfeeling ghost.

### 任务列表

启用 `Tasklist` 后，可以在无序列表项前加上前缀 `[ ]` 以呈现未选中的复选框，或使用 `[x]` 来呈现选中的复选框，从而允许定义任务列表。

源码示例：

```markdown
- [x] Rick and Morty S01
- [ ] Rick and Morty S02
    * [x] Rick and Morty S02E01
    * [x] Rick and Morty S02E02
    * [ ] Rick and Morty S02E03
- [ ] Rick and Morty S03
```

预览效果：

- [x] Rick and Morty S01
- [ ] Rick and Morty S02
    * [x] Rick and Morty S02E01
    * [x] Rick and Morty S02E02
    * [ ] Rick and Morty S02E03
- [ ] Rick and Morty S03

## 数学公式

[MathJax](https://www.mathjax.org/) 和 [KaTeX](https://katex.org/) 是两个流行的库，用于在浏览器中显示数学内容。尽管这两个库都提供类似的功能，但它们使用不同的语法并具有不同的配置选项。此文档站点提供了有关如何轻松地将它们与 MkDocs 的 Material 集成的信息。

### 行间公式块

公式块必须用 `\[...Math Stuff...\]` 或两行单独的 `$$`围绕。

源码示例：

```markdown
$$
\operatorname{ker} f=\{g\in G:f(g)=e_{H}\}{\mbox{.}}
$$
```

预览效果：

$$
\operatorname{ker} f=\{g\in G:f(g)=e_{H}\}{\mbox{.}}
$$

### 行内公式块

行内公式块必须包含在 `$...$` 或者 `\（...\）` 内。

源码示例：

```markdown
The homomorphism $f$ is injective if and only if its kernel is only the
singleton set $e_G$, because otherwise $\exists a,b\in G$ with $a\neq b$ such
that $f(a)=f(b)$.
```

预览效果：

The homomorphism $f$ is injective if and only if its kernel is only the
singleton set $e_G$, because otherwise $\exists a,b\in G$ with $a\neq b$ such
that $f(a)=f(b)$.

## 工具提示 Tooltips

### 添加工具提示

Markdown 语法允许为每个链接指定一个标题，当启用改进的 Tooltips 时，该标题（`title`）将渲染为美观的 tooltips。

将 tooltips 添加到包含以下行的链接：

```markdown
[Hover me](https://l6y6j6.github.io/mydocs/ "I'm a tooltip!")
```

预览效果：

[Hover me](https://l6y6j6.github.io/mydocs/ "I'm a tooltip!")

还可以将 tooltips 添加到链接引用中：

```markdown
[Hover me][example]

  [example]: https://l6y6j6.github.io/mydocs/ "I'm a tooltip!"
```

预览效果：

[Hover me][example]

  [example]: https://l6y6j6.github.io/mydocs/ "I'm a tooltip!"

对于其他元素，可以使用“属性列表”扩展添加 `title`：

```markdown
:material-information-outline:{ title="Important information" }
```

预览效果：

:material-information-outline:{ title="Important information" }

### 添加缩写

可以使用类似于 URL 和脚注的特殊语法来定义缩写，以 * 开头，紧跟要关联的 `[]` 中的术语或首字母缩略词：

```markdown
The HTML specification is maintained by the W3C.

*[HTML]: Hyper Text Markup Language
*[W3C]: World Wide Web Consortium
```

The HTML specification is maintained by the W3C.

*[HTML]: Hyper Text Markup Language
*[W3C]: World Wide Web Consortium

### 添加词汇表

`Snippets` 扩展可用于通过在专用文件中移动所有缩写来实现一个简单的词汇表，并使用以下配置自动将此文件附加到所有页面：

详情见官方文档：[https://squidfunk.github.io/mkdocs-material/reference/tooltips/#adding-a-glossary](https://squidfunk.github.io/mkdocs-material/reference/tooltips/#adding-a-glossary)

## 参考文档

- Reference of Material for MkDocs: [https://squidfunk.github.io/mkdocs-material/reference/](https://squidfunk.github.io/mkdocs-material/reference/)
- MkDocs 教程: [https://wcowin.work/](https://wcowin.work/)