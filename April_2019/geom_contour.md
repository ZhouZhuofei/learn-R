***********

`geom_contour`

***********

### description

ggplot2 can not draw true 3d surfaces, but you can use geom_contour and geom_tile() to visualise 3d surfaces in 2d. to be a vaild surface, the data must contain only a single row for each unique combination of the variables mapped to the x and y aesthetics. conyouring tends to work best when x and y form a (roughly) evenly spaced grid. if your data is not evenly spaced, you may want to interpolate to a grid before visualising.

### Usage 

`geom_contour(mapping = NULL, data = NULL, stat = "contour", position = "identity", ..., lineend = "butt", linejoin = "round", linemitre = 10, na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

`stat_contour(mapping = NULL, data = NULL, geom = "contour", position = "identity", ..., na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

### Arguments

...

### Aesthetics

...

### Computed variables

...

### see also

...

### Example

Basic plot

`v = ggplot(faithfuld, aes(waiting, eruptions, z = density))`

`v + geom_contour()`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1o2iv2ke6j31d80u0keb.jpg)

`ggplot(faithful, aes(waiting, eruptions)) + geom_density_2d()`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1o2kglylzj31d80u01kx.jpg)

`v + geom_contour(binwidth = 0.001)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1o2mjl5o9j31d80u0u0x.jpg)

`v + geom_contour(aes(colour = stat(level)), binwidth = 0.001)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1o2obkpepj31d80u0x6p.jpg)

`v + geom_contour(colour = "red")`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1o2phs7sdj31d80u0kea.jpg)

`v + geom_raster(aes(fill = density)) + geom_contour(colour = "white")`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1o2qt92hkj31d80u0u0x.jpg)

