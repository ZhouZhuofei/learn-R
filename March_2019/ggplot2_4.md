*******************

`coord_cartesian`

*****************

### description
...

### Usage

`coord_cartesian(xlim = NULL, ylim = NULL, expend = TRUE, default = FALSE, clip = "on")`

### Arguments
...

### examples

two way of zooming the plot display

`p = ggplot(mtcars, aes(disp, wt)) + geom_point() + geom_smooth()`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1crgh3na0j31d50u0tpo.jpg)

`p + scale_x_continuous(limits = c(325, 500))`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1crifkq6gj31d50u0tpv.jpg)

`p + coord_cartesian(xlim = c(325, 500))`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1crl9sp07j31d50u04es.jpg)

`p + coord_cartesian(expand = FALSE)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1croivnhbj31d50u0ww7.jpg)

`d = ggplot(diamonds, aes(carat, price)) + stat_bin2d(bins = 25, colour = "white")`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1crq50tf7j31d50u0ay7.jpg)

`d + scale_x_continuous(limits = c(0, 1))`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1crrpmifxj31d50u0atx.jpg)

`d + coord_cartesian(xlim = c(0, 1))`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1crsyhafnj31d50u0aqj.jpg)

*****************

`coord_fixed`

****************

### description
固定比例尺坐标系强制数据单元在坐标轴上的物理表示之间的指定比例。比率表示在y轴上的单位数等于在x轴上的单位数。默认值ratio = 1确保x轴上的一个单元与y轴上的一个单元的长度相同。大于1的比值使y轴上的单位比x轴上的单位长，反之亦然。这类似于MASS::eqscplot()，但是它适用于所有类型的图形。

### Usage

`coord_fixed(ratio = 1, xlim = NULL, ylim = NULL, expand = TRUE, clip = "on")`

### Arguments
...

### example
`p = ggplot(mtcars, aes(mpg, wt)) + geom_point()`

`p + coord_fixed(ratio = 1)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1cryyzaoej31d50u0455.jpg)

`p + coord_fixed(ratio = 5)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1crzckgn6j31d50u0k4w.jpg)

`p + coord_fixed(xlim = c(15, 30))`

******************

`coord_flip`

*****************

### description

翻转笛卡尔坐标，使水平变成垂直，垂直，水平。这对于将以x为条件显示y的geoms和统计信息转换为以y为条件显示x的统计信息非常有用。

### Usage

`coord_filp(xlim = NULL, ylim = NULL, expand = TRUE, clip = "on")`

### Arguments
...

### example

uesful in boxplots and other interval

`ggplot(diamonds, aes(cut, price)) + geom_boxplot() + coord_flip()`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1cs5utr67j31d50u07je.jpg)

`h = ggplot(diamonds, aes(carat)) + geom_histogram()`

`h + coord_flip()`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1cs94j85rj31d50u07ii.jpg)

`h + coord_flip() + scale_x_reverse()`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1cs9k8l4ej31d50u016z.jpg)

`df = data.frame(x = 1:5, y = (1:5) ^ 2)`

`ggplot(df, aes(x, y)) + geom_area()`

`last_plot() + coord_flip()`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1csbu892qj31d50u0h1w.jpg)





