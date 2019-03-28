*******

`facet_wrap`

********

### description

facet_wrap将一维的面板序列包装成二维。这通常比facet_grid()更好地利用屏幕空间，因为大多数显示器大致是矩形的。

### Usage

`facet_wrap(facets, nrow = NULL, ncol = NULL, scales = "fixed", shrink = TRUE, labeller = "label_value", as.table = TRUE, switch = NULL, drop = TRUE, dir = "h", strip.position = "top")`

### Arguments

...

### Example

`p = ggplot(mpg, aes(displ, hwy)) + geom_point()`

`p + facet_wrap(~class)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1inik804zj31d50u04lc.jpg)

`p + facet_wrap(vars(class))`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1inik804zj31d50u04lc.jpg)

`p + facet_warp(vars(class), nrow = 4)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1inko01hlj31d50u0dzf.jpg)

`ggplot(mpg, aes(displ, hwy)) + geom_point() + facet_wrap(vars(cyl, drv))`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1inmz06aaj31d50u04of.jpg)

`ggplot(mpg, aes(displ, hwy)) + geom_point() + facet_wrap(c("cyl", "drv"), labeller = "label_both")`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1inq2ozsuj31d50u04oy.jpg)

`mpg$class2 = reorder(mpg$class, mpg$displ)`

`ggplot(mpg, aes(displ, hwy)) + geom_point() + facet_wrap(~class2)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1instzmqmj31d50u0h8g.jpg)

`ggplot(mpg, aes(displ, hwy)) + geom_point() + facet_wrap(~class, scales = "free")`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1inu7cs7uj31d50u0qlz.jpg)

`ggplot(mpg, aes(displ, hwy)) + geom_point(data = transform(mpg, class = NULL), colour = "grey85") + geom_point() + facet_wrap(~class)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1inw6g51mj31d50u04ot.jpg)

`ggplot(economics_long, aes(date, value)) + geom_line() + facet_wrap(~variable, scales = "free_y", nrow = 2, strip.position = "bottom")`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1inzbeh69j31d50u01kx.jpg)
