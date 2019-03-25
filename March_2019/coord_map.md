**********

`coord_map`

*************

### description
coord_map使用mapproj包定义的任何投影将地球的一部分(近似球形)投射到平面上。地图投影一般不保留直线，因此这需要大量的计算。coord_quickmap是一个保留直线的快速近似。它最适合赤道附近的小区域。

### Usage

`coord_map(projection = "mercator", ..., parameters = NULL, orientation = NULL, xlim = NULL, ylim = NULL, clip = "on")`

`coord_quickmap(xlim = NULL, ylim = NULL, expand = TRUE, clip = "on")`

### Arguments

...

### details
一般来说，地图投影必须考虑到一个经度的实际长度(以公里为单位)在赤道和极点之间是不同的。在赤道附近，经度与纬度之比约为1。在极点附近，它趋于无穷大，因为经度一度的长度趋于0。对于跨度只有几度且不太接近两极的区域，将地块的长宽比设置为appro- priate lat/lon比值近似于通常的墨卡托投影。这就是coord_quickmap所做的，而且速度要快得多(特别是对于像geom_tile()这样的复杂图，这是以牺牲正确性为代价的。

### example
`library(ggploy2)`

`library(maps)`

`library(mapproj)`

`nz = map_data("nz")`

`nzmap = ggplot(nz, aes(x = long, y = lat, group = group)) + geom_polygon(fill = "white", colour = "black")`

`nzmap`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1f0gix8krj31d50u018q.jpg)

`nzmap + coord_map()`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1f0hnosiuj31d50u0qdg.jpg)

`nzmap + coord_quickmap()`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1f0jgnn43j31d50u04ah.jpg)

`nzmap + coord_map("cylindrical")`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1f0kxw27vj31d50u048e.jpg)

`nzmap + coord_map("azequalarea", orientation = c(-36.92, 174.6, 0))`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1f0lrobssj31d50u0tjx.jpg)

`nzmap + coord_map("lambert", parameters = c(-37, -44))`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1f0mleq65j31d50u049w.jpg)

`states = map_data("state")`

`usamap = ggplot(states, aes(long, lat, group = group)) + geom_polygon(fill = "white", colour = "black")`

`usamap + coord_map("lagrange")`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1f0q99qe5j31d50u0qkl.jpg)

`usamap + coord_map("orthographic")`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1f0s6qklyj31d50u0h1j.jpg)

`usamap + coord_map("gilbert")`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1f0q99qe5j31d50u0qkl.jpg)

`usamap + coord_map("stereographic")`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1f0v3x90cj31d50u0trk.jpg)

`usamap + coord_map("conic", lat0 = 30)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1f0wc75bmj31d50u07ms.jpg)

`world = map_data("world")`

`worldmap = ggplot(world, aes(x = long, y = lat, group = group)) + geom_path() + scale_x_continuous(breaks = (-4:4) * 40) + scale_y_continuous(breaks = (-2:2) * 30)`

`worldmap + coord_map("ortho")`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1f1321rp5j31d50u0b20.jpg)

`worldmap + coord_map("ortho", orientation = c(-90, 0, 0))`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1f14o3wq2j31d50u0ts2.jpg)

`worldmap + coord_map("ortho" orientation = c(90, 0, 0))`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1f1321rp5j31d50u0b20.jpg)

`worldmap + coord_map("ortho", orientation = c(0, 90, 0))`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1f179k9vij31d50u07sb.jpg)





