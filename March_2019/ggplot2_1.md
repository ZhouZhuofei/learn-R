*************

`aes_position`

***********

### 描述

本页面演示了aes的一个子组的用法;x, y, xmin, xmax, ymin, ymax, xend, yend。

### 例子

价格的均值和均值的标准误差

`domd = lm(price ~ cut, data = diamonds)`

`cuts = data.frame(cut = unique(diamonds$cut), predict(domd, data.frame(cut = unique(diamonds$cut)), se = TRUE)[c("fit", "se.fit")])`

`se = ggplot(cuts, aes(x = cut, y = fit, ymin = fit - se.fit, ymax = fit + se.fit, colour = cut))`

`se + geom_pointrange()`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g16xo5xmmnj31d50u0gyq.jpg)

`p = ggplot(mtcars, aes(wt, mpg)) + geom_point()`

`p + annotate("rect", xmin = 2, xmax = 3.5, ymin = 2, ymax = 25, fill = "dark grey", alpha = 0.5)`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g16xrowe09j31d50u0h0w.jpg)

`p + geom_segment(aes(x = 2, y = 15, xend = 2, yend = 25), arrow = arrow(length = unit(0.5, "cm")))`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g16xvc7abwj31d50u0duk.jpg)

`p + geom_segment(aes(x =2, y = 15, xend = 3.5, yend = 25), arrow = arrow(length = unit(0.5, "cm")))`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g16xxpgbi3j31d50u0tnm.jpg)

`counts = as.data.frame(table(x = rpois(100, 5)))`

`counts$x = as.numeric(as.character(counts$x))`

`with(counts, plot(x, Freq, type = "h", lwd = 10))`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g16y3ny481j31d50u0gr0.jpg)

`ggplot(counts, aes(x, Freq)) + geom_segment(aes(yend = 0, xend = x), size = 10)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g16y364u8aj31d50u0dvj.jpg)

*******************

`annotate`

*******************
这个函数将geoms添加到一个图中，但是与典型的geom函数不同，geoms的属性不是从数据帧的变量映射而来，而是作为向量传入。这对于添加小型注释(如文本标签)或如果您的数据在向量中，并且出于某种原因不希望将它们放在数据框架中，则非常有用。

我的理解可以增加阴影, 文字等。

### 例子

`p + annotate("text", x = 4, y = 25, label = "some text")`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g16yk5fwngj31d50u07iz.jpg)

`p + annotate("rect", xmin = 3, xmax = 4.2, ymin = 12, ymax = 21, alpha = 0.2)`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g16ym6b3jvj31d50u0k6h.jpg)

`p + annotate("pointrange", x = 3.5, y = 20, ymin = 12, ymax = 28, colour = "red", size = 1.5)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g16yq62vhaj31d50u017k.jpg)

`p + annotate("segment", x = 2.5, xend = 4, y = 15, yend = 25, colour = "blue")`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g16yrva5poj31d50u0tno.jpg)

`p + annotate("text", x =2:3, y = 20:21, label = c("my label", "label 2"))`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g16yuvagbbj31d50u017j.jpg)

`p + annotate("text", x = 4, y = 25, label = "italic(R) ^2 == 0.75", parse = TRUE)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g16z03973rj31d50u04d5.jpg)

`p + annotate("text", x = 4, y = 25, label = "paste(italic(R) ^ 2, \" = 0.75\")", parse = TRUE)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g16z0hoq2dj31d50u0k62.jpg)








