*****************

`geom_bin2d`

****************

### description

Divides the plane into rectangles, counts the number of cases in each rectangle, and then (by default) maps the number of cases to the rectangle's fill. This is a uesful alternative to geom_point() in the presence of overplotting.

### Usage

`geom_bin2d(mapping = NULL, data = NULL, stat = "bin2d", position = "identity", ..., na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

`stat_bin_2d(mapping = NULL, data = NULL, geom = "tile", position = "identity", ..., bins = 30, binwidth = NULL, drop = TRUE, na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

### Arguments

...

### aesthetics

...

### Computed variables

...

### see also

`stat_binhex`


### examples

`d = ggplot(diamonds, aes(x, y)) + xlim(4, 10) + ylim(4, 10)`

`d + geom_bin2d()`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1n3sfgp99j31d80u0qjm.jpg)

`d + geom_bin2d(bins = 10)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1n3tfzzp6j31d80u0toz.jpg)

`d + geom_bin2d(bins = 30)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1n3u92ajhj31d80u0qjm.jpg)

`d + geom_bin2d(binwidth = c(0.1, 0.1))`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1n3vbsjyuj31d80u0arw.jpg)





