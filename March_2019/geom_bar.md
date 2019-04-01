***********

`geom_bar`

***********

### description 

There are two types of bar charts: geom_bar() and geom_col().geom_bar() makes the height of the bar proportional to the number of cases in each group (or if the weight aesthetic is supplied.the sum of the weights). if you wants the heights of yhe bars to represent values in the data, use geom_col() instead. geom_bar() uses stat_count() by default: it counts the number of cases at each x position. geom_col() uses stat_identity() : it leaves the data as is.

### Usage

`geom_bar(mapping = NULL, data = NULL, stat = "count", position = "stack",..., width = NULL, binwidth = NULL, na.rm = FALSE, shoe.legend = NA, inherit.aes = TRUE)`

`geom_col(mapping = NULL, data = NULL, position = "stack", ..., width = NULL, na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

`stat_count(mapping = NULL, data = NULL, geom = "bar",position = "stack", ..., sidyh = NULL, na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

### Arguments

...

### details

条形图使用高度表示值，因此必须始终显示条形图的底部，以产生有效的视觉比较。这就是为什么在条形图中使用对数缩放的y轴没有意义。
默认情况下，position_stack()将占据相同x位置的多个条堆叠在一起。如果您想让它们左右闪避，可以使用position_dodge()或position_dodge2()。最后，position_fill()通过堆叠条形图和stan-来显示每个x上的相对比例
使每根杆的高度相等。

### aesthetics

...

### Computed variables

...

### see also

...

### Example

`g = ggplot(mpg, aes(class))`

`g + geom_bar()`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1lzbc0skfj31d80u0h3o.jpg)

`g + geom_bar(aes(weight = displ))`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1n2zi30s7j31d80u0nci.jpg)

`g + geom_bar(aes(fill = drv))`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1n31tpza5j31d80u0h1o.jpg)

`g + geom_bar(aes(fill = drv), position = position_stack(reverse = TRUE)) + coord_flip() + theme(legend.position = "top")`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1n34fyuhij31d80u016b.jpg)

`df = data.frame(trt = c("a", "b", "c"), outcome = c(2.3, 1.9, 3.2))`

`ggplot(df, aes(trt, outcome)) + geom_col()`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1n376d9xxj31d80u0h0y.jpg)

`ggplot(df, aes(trt, outcome)) + geom_point()`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1n38x1lhwj31d80u0k24.jpg)

`df = data.frame(x = rep(c(2.9, 3.1, 4.5), c(5, 10, 4)))`

`ggplot(df, aes(x)) + geom_bar()`

`ggplot(df, aes(x)) + geom_histogram(binwidth = 0.5)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1n3bptvjoj31d80u0qh5.jpg)
