***********

`facet_grid`

***********

### description

facet_grid()形成由行和列面变量定义的面板矩阵。当你有两个离散变量，并且所有变量的组合都存在于数据中时，它是最有用的。

### Usage

`facet_grid(rows = NULL, cols = NULL, scales = "fixed",space = "fixed", shrink = TRUE, labeller = "label_value", as.table = TRUE, switch = NULL, drop = TRUE, margins = FALSE, facets = NULL)`

### Arguments

...

### example

`p = ggplot(mpg, aes(displ, cty)) + geom_point()`

`p + facet_grid(rows = vars(drv))`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1iatzs88ej31d50u0arn.jpg)

`p + facet_grid(cols = vars(drv))`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1iave6c8uj31d50u0u03.jpg)

`p + facet_grid(vars(drv), vars(cyl))`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1iax1veg2j31d50u04qp.jpg)

`p + facet_grid(. ~ cyl)`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1iayojkakj31d50u04qp.jpg)

`p + facet_grid(drv ~ .)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1iaznf28mj31d50u07lt.jpg)

`p + facet_grid(drv ~ cyl)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1ib0u87tpj31d50u04qp.jpg)

`df = data.frame(displ = mean(mpg$displ), cty = mean(mpg$cty))`


`p + facet_grid(cols = vars(cyl)) + geom_point(data = df, colour = "red", size = 2)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1ib4ia2hcj31d50u04qp.jpg)

`mt = ggplot(mtcars, aes(mpg, wt, colour = factor(cyl))) + geom_point()`

` mt + facet_grid(. ~ cyl, scales = "free")`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1ib75i5dej31d50u07ol.jpg)

`ggplot(mpg, aes(drv, model)) + geom_point() + facet_grid(manufacturer ~ .,scales = "free", space = "free") + theme(strip.text.y = element_text(angle = 0))`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1iba23xzej31d50u04ef.jpg)

`mg = ggplot(mtcars, aes(x = mpg, y = wt)) + geom_point()`

`mg + facet_grid(vs + am ~ gear, margins = TRUE)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1ibcdanknj31d50u0hdg.jpg)

`mg + facet_grid(vs + am ~ gear, margins = "am")`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1ibdwlww7j31d50u0nnd.jpg)

`mg + facet_grid(vs + am ~ gear, margins = "vs")`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1ibf23of9j31d50u0khs.jpg)

