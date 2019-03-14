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

