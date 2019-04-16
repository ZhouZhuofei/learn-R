****************

`geom_dotplot`

***************

### description

In a dot plot, the width of a dot corresponds to the bin width (or maximum width, depending on the binning algorithm), and dots are stacked, with each representing one observation.

### Usage

`geom_dotplot(mapping = NULL, data = NULL, position = "identity", ..., binwidth = NULL, binaxis = "x", method = "dotdensity", binpositions = "bygroup", stackdir = "up", stackratio = 1, dotsize = 1, stackgroups = FALSE, origin = NULL, right = TRUE, width = 0.9, drop = FALSE, na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

### Arguments

...

### Details

There are two basic approaches: dot-density and histodot. with dot-density binning, the bin positions are determined by the data and binwidth, which is the maximum width of each bin. see wilkinson for details on the dot-density binning algorithm. with histodot binning, the bins have fixed positions and fixed widths, much like a histogram.

when binning along the x  axis and stcaking along y axis, the numbers on y axis are not meaningful, due to technical limitations of ggplot2. you can hide the y axis, as in one of the examples, or manually scale it to match the number of dots.

### Aesthetics

...

### Computed variables

...

### References

...

### Example

`ggplot(mtcars, aes(x = mpg)) + geom_dotplot()`

![](https://ws3.sinaimg.cn/large/006tNc79ly1g24fu6s8d5j31d80u0k7t.jpg)

`ggplot(mtcars, aes(x = mpg)) + geom_dotplot(binwidth = 1.5)`

![](https://ws3.sinaimg.cn/large/006tNc79ly1g24fvixlrnj31d80u0h2r.jpg)

Use ficed-width bins

`ggplot(mtcars, aes(x = mpg)) + geom_dotplot(method = "histodot", binwidth = 1.5)`

![](https://ws3.sinaimg.cn/large/006tNc79ly1g24fxoxlbfj31d80u04ex.jpg)

`ggplot(mtcars, aes(x = mpg)) + geom_dotplot(binwidth = 1.5, stackdir = "center")`

![](https://ws2.sinaimg.cn/large/006tNc79ly1g24g0l5hu0j31d80u0dwx.jpg)

`ggplot(mtcars, aes(x = mpg)) + geom_dotplot(binwidth = 1.5, stackdir = "centerwhole")`

![](https://ws2.sinaimg.cn/large/006tNc79ly1g24g07btpqj31d80u0h2l.jpg)

`ggplot(mtcars, aes(x = mpg)) + geom_dotplot(binwidth = 1.5) + scale_y_continuous(NULL, breaks = NULL)`

![](https://ws2.sinaimg.cn/large/006tNc79ly1g24g3bahhgj31d80u04ey.jpg)

`ggplot(mtcars, aes(x = mpg)) + geom_dotplot(binwidth = 1.5, stackratio = 0.7)`

![](https://ws3.sinaimg.cn/large/006tNc79ly1g24g50v4m7j31d80u07kt.jpg)

`ggplot(mtcars, aes(x = mpg)) + geom_dotplot(binwidth = 1.5, dotsize = 1.25)`

![](https://ws4.sinaimg.cn/large/006tNc79ly1g24g5wx58hj31d80u0qjp.jpg)

`ggplot(mtcars, aes(x = 1, y = mpg)) + geom_dotplot(binaxis = "y", stackdir = "center")`

![](https://ws4.sinaimg.cn/large/006tNc79ly1g24g7skyuxj31d80u016b.jpg)

`ggplot(mtcars, aes(x = factor(cyl), y = mpg)) + geom_dotplot(binaxis = "y", stackdir = "center")`

![](https://ws4.sinaimg.cn/large/006tNc79ly1g24g98vdd5j31d80u04az.jpg)



