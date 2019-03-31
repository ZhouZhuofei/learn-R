**************

`geom_abline`

************

### description
这些geoms将参考线(有时称为规则)添加到绘图中，可以是水平的、垂直的，也可以是对角线的(由斜率和截距指定)。这些对于注释图表非常有用。

### Usage

`geom_abline(mapping = NULL, data = NULL, ..., slope, intercept, na.rm = FALSE, show.legend = NA)`

`geom_hline(mapping = NULL, data = NULL, ..., yintercept, na.rm = FALSE, show.legend = NA)`

`geom_vline(mapping = NULL, data = NULL, ..., xinyercept, na.rm = FALSE, show.legend = NA)`

### Arguments

...

### details

These geoms act slightly differently from other geoms. You can supply the parameters in two ways: either as arguments to the layer function, or via aesthetics. If you use arguments, e.g. geom_abline(intercept = 0, slope = 1), then behind the scenes the geom makes a new data frame containing just the data you’ve supplied. That means that the lines will be the same in all facets; if you want them to vary across facets, construct the data frame yourself and use aesthetics.
Unlike most other geoms, these geoms do not inherit aesthetics from the plot default, because they do not understand x and y aesthetics which are commonly set in the plot. They also do not affect the x and y scales.

### Aesthetic

These geoms are drawn using with geom_line() so support the same aesthetics: alpha, colour, linetype and size. They also each have aesthetics that contorl the position of the line:

- geom_vline() : xintercept
- geom_hline() : yintercept
- geom_abline() : slope and intercept

### see also

see geom_segment() for a more general approah to adding straight line segments to plot.

### Examples

`p = ggplot(mtcars, aes(wt, mpg)) + geom_point()`

`p + geom_vline(xintercept = 5)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1ly34drmjj31d80u0k62.jpg)

`p + geom_vline(xintercept = 1:5)`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1ly40lqwzj31d80u0wtt.jpg)

`p + geom_hline(yintercept = 20)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1ly65uktmj31d80u0nbl.jpg)

`p + geom_abline()`

can't see it - outside the range of data

`p + geom_abline(intercept = 20)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1lya7ffo5j31d80u0tnj.jpg)

`coef(lm(mpg ~ wt, data = mtcars))`

`p + geom_abline(intercept = 37, slope = -5)`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1lyc7d377j31d80u0k6y.jpg)

`p + geom_smooth(method = "lm", se = FALSE)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1lydallgej31d80u0aq8.jpg)

`p = ggplot(mtcars, aes(mpg, wt)) + geom_point() + facet_wrap(~ cyl)`

`mean_wt = data.frame(cyl = c(4, 6, 8), wt = c(2.28, 3.11, 4.00))`

`p + geom_hline(aes(yintercept = wt), mean_wt)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1lyk54i4nj31d80u0e47.jpg)

`ggplot(mtcars, aes(mpg, wt, colour = wt)) + geom_point() + geom_hline(aes(yintercept = wt, colour = wt), mean_wt) + facet_wrap(~ cyl)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1lyo3rpoij31d80u04n6.jpg)









