*****************

`geom_density_2d`

******************

### description

Perform a 2D kernel density estimation using MASS::Kde2d() and display the results with contours. This can be useful for dealing with overplotting. This is a 2d version of geom_density().

### Usage

`geom_density_2d(mapping = NULL, data = NULL, stat = "density2d", position = "identity", ..., lineend = "butt", linejoin = "round", linemitre = 10, na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

`stat_density_2d(mapping = NULL, data = NULL, geom = "density_2d", position = "identity", ..., contour = TRUE, n = 100, h = NULL, na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

### Arguments

...

### Aesthetics

...

### Computed variables

...

### see also

...

### Examples

`m = ggplot(faithful, aes(x = eruptions, y = waiting)) + geom_point() + xlim(0.5, 6) + ylim(40, 110)`

`m + geom_density_2d()`

![](https://ws2.sinaimg.cn/large/006tNc79ly1g1yrotpraaj31d80u0no1.jpg)

`m + stat_density_2d(aes(fill = stat(level)), geom = "polygon")`

![](https://ws3.sinaimg.cn/large/006tNc79ly1g1yrrnfuuvj31d80u01fw.jpg)

`set.seed(4393)`

`dsmall = diamonds[sample(nrow(diamonds), 100),]`

`d = ggplot(dsmall, aes(x, y))`

if you map an aesthetic to a categorical variable, you will get a set of contours for each value of that variable

![](https://ws4.sinaimg.cn/large/006tNc79ly1g1yrzwqce7j31d80u0x6p.jpg)

`d + stat_density_2d(aes(fill = stat(level)), geom = "polygon") + facet_grid(. ~ cut) + scale_fill_viridis_c()`

![](https://ws1.sinaimg.cn/large/006tNc79ly1g1ys71kwxfj31d80u0b29.jpg)

`d + stat_density_2d(aes(fill = stat(nlevel)), geom = "polygon") + facet_grid(. ~ cut) + scale_fill_viridis_c()`

![](https://ws2.sinaimg.cn/large/006tNc79ly1g1ys8ele0mj31d80u01ky.jpg)

`d + stat_density_2d(geom = "raster", aes(fill = stat(density)), contour = FALSE)`

![](https://ws1.sinaimg.cn/large/006tNc79ly1g1ysc1dwjvj31d80u04qq.jpg)

` d + stat_density_2d(geom = "point", aes(size = stat(density)), n = 20, contour = FALSE)`

![](https://ws4.sinaimg.cn/large/006tNc79ly1g1yscqma69j31d80u0wxk.jpg)

