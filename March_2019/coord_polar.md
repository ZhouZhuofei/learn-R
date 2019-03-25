***************

`coord_polar`

***************

### description


极坐标系统通常用于饼图，饼图是在极坐标下堆叠的条形图。

### Usage

`coord_polar(theta = "x", start = 0, direction = 1, cilp = "on")`

### Arguments

...

### example

`pie = ggplot(mtcars, aes(x = factor(cyl), fill = factor(cyl))) + geom_bar(width = 1)`

`pie + coord_polar(theta = "y")`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1f1hg8aatj31d50u0duw.jpg)

`pie + coord_polar()`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1f1inf3lyj31d50u0n9z.jpg)

`df = data.frame(variable = c("does not resemble", "resembles"), value = c(20,80))`

`ggplot(df, aes(x = "", y = value, fill = variable)) + geom_col(width = 1) + scale_fill_manual(values = c("red", "yellow") + coord_polar("y", start = pi / 3) + labs(title = "Pac man")`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1f1ofnqehj31d50u015v.jpg)

`library(ggplot2movies)`

`movies$rrating = cut_interval(movies$rating, length = 1)`

`movies$budgetq = cut_number(movies$budget, 4)`

`doh = ggplot(movies, aes(x = rrating, fill = budgetq))`

`doh + geom_bar(width = 1) + coord_polar()`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1f1ugnzkrj31d50u0h35.jpg)

`doh + geom_bar(width = 0.9) + coord_polar(theta = "y")`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1f1vio63lj31d50u0tx5.jpg)


