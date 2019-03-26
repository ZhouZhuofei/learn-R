**************

`coord_trans`

**************

### description
coord_trans不同于scale转换，因为它发生在统计转换之后，并且会影响geoms的视觉外观——不能保证直线将继续是直线。

### Usage

`coord_trans(x = "identity", y = "identity", limx = NULL, limy = NULL, clip = "on", xtrans, ytrans)`

### Arguments

...

### example

`ggplot(diamonds, aes(log10(carat), log10(price))) + geom_point()`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1g57hjiftj31d50u0kic.jpg)

`ggplot(diamonds, aes(carat, price)) + geom_point() + scale_x_log10() + scale_y_log10()`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1g5anhmh6j31d50u01j2.jpg)

`d = subset(diamonds, carat > 0.5)`

`ggplot(d, aes(carat, price)) + geom_point() + geom_smooth(method = "lm") + coord_trans(x = "log10", y = "log10")`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1g5g47l49j31d50u01kx.jpg)

`ggplot(diamonds, aes(carat, price)) + geom_point() + geom_smooth(method = "lm") + scale_x_log10() + scale_y_log10() + coord_trans(x = scales::exp_trans(10), y = scales::exp_trans(10))`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1g5k9i96xj31d50u07mh.jpg)

`ggplot(diamonds, aes(carat, price)) + geom_point() + geom_smooth(method = "lm")`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1g5mxrn39j31d50u0x16.jpg)

`df = data.frame(a = abs(rnorm(26)), letters)`

`plot = ggplot(df, aes(a, letters)) + geom_point()`

`plot + coord_trans(x = "log10")`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1g5pl6id0j31d50u0dui.jpg)

`plot + coord_trans(x = "sqrt")`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1g5qmufitj31d50u04co.jpg)
