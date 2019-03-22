*****************

`annotation_raster`

********************

### 描述

这是为每个面板中相同的静态注释优化的geom_光栅()的一个特殊版本。这些注释不会影响缩放(即x轴和y轴不会增长到覆盖栅格的范围，而且栅格必须已经有自己的颜色)。这对于添加位图图像非常有用。

### 用例

`annotation_raster(raster, xmin, xmax, ymin, ymax, interpolate = FALSE)`

### Arguments

.....

### example
`rainbow = matrix(hcl(seq(0, 360, length.out = 50 * 50), 80, 70), nrow = 50)`

`ggplot(mtcars, aes(mpg, wt)) + annotation_raster(rainbow, -Inf, Inf, -Inf, Inf) + geom_point()`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1bd7cva5lj31d50u0x6p.jpg)

`ggplot(mtcars, aes(mpg, wt)) + geom_point() + annotation_raster(rainbow, 15, 20, 3, 4)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1bday667xj31d50u0tu6.jpg)

`rainbow2 = matrix(hcl(seq(0, 360, length.out = 10), 80, 70), nrow = 1)`

`ggplot(mtcars, aes(mpg, wt)) + annotation_raster(rainbow2, -Inf, Inf, -Inf, Inf) + geom_point()`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1bdfaryu0j31d50u0kbl.jpg)

`ggplot(mtcars, aes(mpg, wt)) + annotation_raster(rainbow2, -Inf, Inf, -Inf, Inf, interpolate = TRUE) + geom_point()`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1bdqkjvi8j31d50u0qv6.jpg)

****************

`autolayer`

***************

### 描述
autolayer使用ggplot2在单个命令中为特定类的对象绘制特定层。这定义了其他类和包可以扩展的S3泛型。

### 用法

`autolayer(object, ...)`

### Arguments
...

### see also

`autoplot(), ggplot() and fortify()

******************

`autoplot`

****************

### description

autolayer使用ggplot2在单个命令中为特定类的对象绘制特定层。这定义了其他类和包可以扩展的S3泛型。

......

**************

`borders`

***************

### description

这是一种将地图数据(从地图包中)获取到您的绘图上的快速且脏的方法。如果您需要一些粗糙的参考行，这是一个很好的起点，但是您通常需要一些用于通信图形的更复杂的东西。

### Usage

`borders(database = "world", regions = ".", fill = NA, colour = "grey50", xlim = NULL, ylim = NULL, ...)`

### Arguments
...

### example

`if (require("maps")) {`

`ia = map_data("county", "iowa")`

`mid_range = function(x) mean(range(x))`

`seats = plyr::ddply(ia, "subregion", plyr::colwise(mid_range, c("lat", "long")))`

`ggplot(ia, aes(long, lat)) + geom_ploygon(aes(group = group), fill = NA, colour = "grey60") + geom_text(aes(label = subregion), data = seats, size = 2, angle = 45)`

`data(us.cities)`

`capitals = subset(us.cities, capital == 2)`

`ggplot(capitals, aes(long, lat)) + border("state") + geom_point(aes(size = pop)) + scale_size_area() + coord_puickmap()`

`ggplot(capitals, aes(long, lat)) + borders("world", xlim = c(-130, -60), ylim = c(20, 50)) + geom_point(aes(size = pop)) + scale_size_area() + coord_quickmap()`

`}`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1by80td4jj31d50u0e05.jpg)



