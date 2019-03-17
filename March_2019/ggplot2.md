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

`#整洁的评价`

`#aes()会自动引用参数，所以你需要整理清楚。`

`#计算以围绕ggplot2管道创建包装器。最简单的情况发生时，您的包装采取点:`

`sctter_by <- function(data, ...) {ggplot(data) + geom_point(aes(...))}`

`sctter_by(mtcars, disp, drat)`

`#如果你的包装器有一个更具体的接口与命名参数，你需要“enquote和unquote”:`

`sccter_by = function(data, x, y) { x = enquo(x); y = enquo(y); ggplot(data) + geom_point(aes(!!x, !!y))}`

`sctter_by(mtcars, disp, drat)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g13llmifk2j31d50u0aom.jpg)

`#注意，包装器的用户可以在引用的表达式中使用他们自己的函数，并且所有这些函数都会按照应该的方式解析!`

`cut3 = function(x) cut_number(x, 3)`

`sctter_by(mtcars, cut3(disp), drat)`

### 用例
********************

`aes_`以编程方式定义美学映射

********************

### 描述
美学映射描述数据中的变量如何映射到geoms的视觉属性(美学)。aes()使用非标准计算来捕获变量名。aes_和aes_string要求您显式地引用输入，对于aes_string()使用""，对于aes_()使用引号或~。(aes_q是aes_的别名)。这使得aes_和aes_string易于编程。

### 用例

`aes_(x, y, ...)`

`aes_string(x, y, ...)`

`aes_q(x, y, ...)`

### 解释
`x, y, ...`名称值对列表。元素必须是带引号的调用、字符串、单侧公式或常量。

### 细节
在编写创建绘图的函数时，aes_string和aes_特别有用，因为您可以使用字符串或引用名称调用来定义美学映射，而不必使用substitute()来生成对aes()的调用。

我建议使用aes_(),因为创建aes(colour=“my colour”)或aes与aes_string {x = `x$1`􏰞}()很笨重。

### 另请参阅

`aes()`

### 例子
以下效果相同

`aes(mpg, wt, col = cyl)`

`aes_(quote(mpg), quote(wt), col = quote(cyl))`

`aes_(~mpg, ~wt, col = ~cyl)`

`aes_string("mpg", "wt", col = "cyl")`

你不能简单的用aes_string随意命名

`aes('$100', colour = "smooth")`

好的，，你可以，但是要求

`aes_string("'$100'", colour = '"smooth"')`

`var = "cyl"`

`aes(col = x)`

`aes_(col =as.name(var))`

***********************

`aes_colour_fill_alpha` 颜色，填充，深浅

********************

### 描述

### 例子

条形图

`c = ggplot(mtcars, aes(factor(cyl)))`

默认

`c + geom_bar()`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g13ttbekdnj31d50u0asj.jpg)

改变颜色

`c + geom_bar(fill = "red")`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g13tvkya28j31d50u0anl.jpg)

`c + geom_bar(colour = "red")`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g13tx676fbj31d50u0wy3.jpg)

`c + geom_bar(fill = "white", colour = "red")`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g13u5uqhmaj31d50u0wp0.jpg)

<<<<<<< HEAD
fill 可以带来不同的颜色，设置fill等于一个因素变量使用离散的颜色比例

`k = ggplot(mtcars, aes(factor(cyl), fill = factor(vs)))`

`k + geom_bar`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g14ft48j6cj31d50u016i.jpg)

fill 也可以使用连续变量

`m = ggplot(faithfuld, aes(waiting, eruptions))`

`m + geom_raster()`

`m + geom_raster(aes(fill = density))`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g14g332npaj31d50u0kjl.jpg)

有些不能使用色彩调节

`b = ggplot(economics, aes(x=date, y=unemploy))`

`b + geom_line()`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g14gb1s1l4j31d50u0tsl.jpg)

`b + geom_line(colour = "green")`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g14gblfcehj31d50u01da.jpg)

`b + geom_line(colour = "blue") + geom_point(colour = "red")`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g14gct3hr3j31d50u0x2c.jpg)

用于覆盖alpha值的大型数据集

会使点更透明，易看

`df = data.frame(x = rnorm(5000), y = rnorm(5000))`

`h = ggplot(df, aes(x,y))`

`h + geom_point()`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g14gk064xcj31d50u01kx.jpg)

`h + geom_point(alpha = 0.5)`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g14gki90buj31d50u0e81.jpg)

`h + geom_point(alpha = 0.1)`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g14gkyvc4oj31d50u07wh.jpg)

**************************

`aes_group_order`

**************************

### 描述

`group`

### 例子
默认情况下，该组设置为图中所有离散变量的交互。这通常会正确地划分数据，但如果没有这样做，或者图中没有使用离散变量，则需要显式地定义分组结构，方法是将组映射到每个组具有不同值的变量。

对于大多数情况下，划分数据可以aes(colour, shape, fill, linetype)or facets.

`p = ggplot(mtcars, aes(wt, mpg))`

`p + geom_point(size = 4)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g14h6g5bgwj31d50u017p.jpg)

`p + geom_point(aes(colour = factor(cyl)), size = 4)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g14h7o0oxbj31d50u0ar2.jpg)

`p + geom_point(aes(shape = factor(cyl)),size = 4)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g14h9awzd9j31d50u0qil.jpg)

fill

`a = ggplot(mtcars, aes(factor(cyl))`

`a + geom_bar()`

`a + geom_bar(aes(fill =factor(cyl)))`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g14hegqkxwj31d50u016h.jpg)

`a + geom_bar(aes(fill = factor(vs)))`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g14hdx9sxtj31d50u04c7.jpg)

linetypes

`rescale01 = function(x) (x - min(x)) / diff(range(x))`

`ec_scaled = data.frame(date = economics$date, plyr::colwise(rescale01)(economics[,-(1:2)]))`

`ecm = reshape2::melt(ec_scaled, id.vars = "date")`

`f = ggplot(ecm, aes(date, value))`

`f + geom_line(aes(linetype = variable))`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g14hm0j8bzj31d50u01kx.jpg)

facets
`k = ggplot(diamonds, aes(carat, stat(density))) + geom_histogram(binwidth = 0.2)`

`k + facet_grid(. ~ cut)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g15lj4voodj31d50u07wh.jpg)

有三种常见的情况下，默认值是不够的，我们将在下面逐一考虑。在下面的示例中，我们将使用nlme包中的一个简单纵向数据集Oxboys。它记录了26个男孩(被试)的身高(身高)和中心年龄(年龄)，测量了9次。

`h = ggplot(nlme::Oxboys, aes(age,height))`

`h + geom_line()`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g15lnwxbzej31d50u0h59.jpg)

`h + geom_line(aes(group = Subject))`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g15looxt2bj31d50u04n1.jpg)

`h + geom_smooth(aes(group = Subject), method = "lm", se = FALSE)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g15lsmxdt5j31d50u01kx.jpg)

`h + geom_smooth(aes(group = 1), size = 2, method = "lm", se = FALSE)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g15lsvirtlj31d50u0k8c.jpg)

覆盖默认分组的绘图具有离散的比例，但您希望绘制跨组连接的线。这是交互图、概要图和平行坐标图等中使用的策略。例如，我们在每个测量场合绘制高度的箱形图

`boysbox = ggplot(nlme::Oxboys, aes(Occasion, height))`

`boysbox + geom_boxplot()`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g15lvt2n0oj31d50u0wun.jpg)

`boysbox + geom_boxplot() + geom_line(aes(group = Subject), colour = "blue")`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g15lxl4f5uj31d50u04qp.jpg)

******************************

`aes_linetype_size_shape`

*******************************

### 描述

本页面演示了aes的一个子组的用法;线形，大小和形状。

### 例子

0 =空白，1 =实线，2 =虚线，3 =虚线，4 =虚线，5 =长虚线，6 =双虚线

0 = blank, 1 = solid, 2 = dashed, 3 = dotted, 4 = dotdash, 5 = longdash, 6 = twodash

用数字代表不同的线的类型

`df = data.frame(x = 1:10, y = 1:10)`

`f = ggplot(df,aes(x, y))`

`f + geom_line(linetype = 2)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g15m503audj31d50u0k66.jpg)

`f +geom_line(linetype = "dotdash")`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g15m63uc8rj31d50u0k62.jpg)



十六进制字符串的一个例子，字符串“33”指定了三个on后面跟着三个off，“3313”指定了三个on后面跟着三个off后面跟着一个on，最后是三个off

`f + geom_line(linetype = "3313")`

`ggplot(economics_long, aes(date, value01)) + geom_line(aes(linetype = variable))`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g15mbowja4j31d50u01kx.jpg)

`ggplot(economics_long, aes(date, value01)) + geom_line(aes(colour = variable))`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g15n8hgiswj31d50u0hdt.jpg)

size example

`p = ggplot(mtcars, aes(wt, mpg))`

`p = geom_point()`

`p + geom_point(shape = 5)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g15mges6agj31d50u0qhp.jpg)

`p + geom_point(shape = 2)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g15mj1iw47j31d50u0qi1.jpg)

`p + geom_point(aes(size = qsec))`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g15mj1iw47j31d50u0qi1.jpg)

`p + geom_point(aes(size = 2.5)) + geom_hline(yintercept = 25, size = 3.5)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g15mmakf7lj31d50u017r.jpg)

shape

Shape接受四种类型的值:[0,25]中的整数，

单个字符——使用该字符作为绘图符号，

a.绘制可见的最小矩形(即，约1像素)

`p + geom_point(shape = "k", size = 3)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g15mpajwqmj31d50u0wt8.jpg)

`df2 = data.frame(x = 1:5, y = 1:25, z = 1:25)`

`s = ggplot(df2, aes(x,y))`

`s + geom_point(aes(shape = z), size = 4) + scale_shape_identity()`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g15mtapjgzj31d50u0aob.jpg)

fill

`s + geom_point(aes(shape = z), size = 4, colour = "red") + scale_shape_identity()`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g15mxmlk4bj31d50u07is.jpg)

`s + geom_point(aes(shape = z), size = 4, colour = "red", fill = "black") + scale_shape_identity()`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g15mxuyf4gj31d50u0tn3.jpg)

****************

`aes_position`

******************

### 描述

























