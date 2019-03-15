# 安装包“ggplot2” 2019，3，14

版本：3.1.0
## 使用图层平面艺术语法绘制优雅的可视化数据
## 描述：一个用于“声明式”创建图形的系统，基于“图形语法”。你提供数据，告诉'ggplot2'如何将变量映射到美学，使用什么图形原语，它会处理细节。
## 依赖：R （>=3.1)
### 索引

******************
`+ gg `  **add components to plot**
******************
### 描述
`+`是构造复杂的ggplot2图形的关键。它允许你从简单开始，然后变得越来越复杂，在每一步检查你的工作。
### 用法
`e1 + e2'

e1:类ggplot()或theme()的对象。

e2:一个plot组件，如下所述。

### 你能增加
你可以增加下列多种的对象：

+ 一个aes()对象取代默认
+ 由geom_或stat_函数创建的层将添加一个新层。
+ 规模覆盖现有的规模。
+ a them()修改当前主题。
+ coord覆盖当前坐标系。
+ facet规范覆盖当前面板。

为了取代当前默认的数据结构，你必须使用`+`,由于S3方法的优先级问题。您还可以提供一个列表，在这种情况下，列表中的每个元素将依次添加。

### 另请参阅

`them()`

### 例子
`base = ggplot(mpg, aes(displ, hwy)) + geom_point + geom_smooth()`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g12em6zen7j30id0dp0tq.jpg)
`#要覆盖数据，你必须使用%+%`

`base %+% subset(mpg, f1 == "p")`

`#你可以添加多重成分在列表中`

`这对于从函数返回非常有用`

`baes = list(subset(mpg, f1 == "p"), geom_smooth())`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g12eti8xdfj30id0dpt9h.jpg)

**********************
`aes         ` Construct aesthetic mappings
**********************

### 描述
美学映射描述数据中的变量如何映射到geoms的视觉属性(美学)。美学映射可以在ggplot2()和单独的层中设置。

### 用例

`aes(x, y, ...)`

### 解释

`x, y, ...`名称值对列表，用于映射到变量。x和y美观的名称通常被省略，因为它们很常见;所有其他的美学都必须被命名。

### 细节

该函数还通过将颜色转换为颜色(也在子字符串中，例如point_color转换为point_color)和将旧式R名称转换为ggplot名称(例如。pch表示形状，cex表示大小)。

### 值

一个列表和类uneval,列表的组件要么是quosures，要么是常量。

### 准引号

`aes()`是一个引用函数，这意味着引用它的输入，以便在数据上下文中进行评估。这使得处理数据帧中的变量很容易，因为您可以直接命名这些变量。另一方面，您必须使用准引号来使用aes()编程。请参阅一个整洁的评估教程，如dplyr编程简介，以了解关于这些技术的更多信息。

### 另请参阅

`var()`是另一个引用函数

### 例子
`aes(x = mpg, y = wt)`

`aes(mpg, wt)`

`#可以在里面进行运算`

`aes(x = mpg^2, y = wt/cyl)`

`#或者包含`

`aes(x = 1, colour = "smooth")`

`aes(col = x)`

`aes(fg = x)`

`aes(color = x)`

`aes(colour = x)`

`#aes()被传递到ggplot()或特定层。`

`ggplot(mpg, aes(displ, hwy)) + geom_point()`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g138ekozsej31d50u0k8f.jpg)

`ggplot(mpg) + geom_point(aes(displ, hwy))`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g138ekozsej31d50u0k8f.jpg)


