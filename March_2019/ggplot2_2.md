***************

`annotation_custom`

**************
### 描述

这是一个特殊的geom，用于作为每个面板中相同的静态注释。这些注释不会影响范围(即x轴和y轴不会增长到覆盖grob的范围，并且grob不会被任何ggplot设置或映射修改)。

### 用例

`annotate_custom(grob, xmin = , xmax = ,ymin = , ymax = )`

......

### 例子

`df = data.frame(x = 1: 10, y = 1:10)`

`base = ggplot(df, aes(x,y)) + geom_blank() + theme_bw()`

`base + annotation_custom(grob = grid::roundrectGrob(), xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g18249rcdbj31d50u0dk4.jpg)

`df2 = data.frame(x = 1, y = 1)`

`g = ggplotGrob(ggplot(df2, aes(x,y)) + geom_point() + theme(plot.background = element_rect(colour = "black")))`

`base + annotation_custom(grob = g, xmin = 1, xmax = 10, ymin = 8, ymax = 10)`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1828oxjn3j31d50u011n.jpg)

******************

`annotation_logticks`

*****************

### 描述
。。。。。。

### 用例
`annotation_logticks(base = 10, sides = "b1", scaled = TRUE, short = unit(0.1, "cm"), mid = unit(0.2, "cm"), long = unit(0.3,"cm"), colour = "black", size = 0.5, linetype = 1,alpha = 1, color = NULL, ...)`

### Arguments
......

### 回见
。。。。。。

### 例子

```a <- ggplot(msleep, aes(bodywt, brainwt)) +
     geom_point(na.rm = TRUE) +
     scale_x_log10(
       breaks = scales::trans_breaks("log10", function(x) 10^x),
labels = scales::trans_format("log10", scales::math_format(10^.x)) )+
     scale_y_log10(
       breaks = scales::trans_breaks("log10", function(x) 10^x),
       labels = scales::trans_format("log10", scales::math_format(10^.x))
)+ theme_bw()
```

` a + annotation_logticks()`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g182nf8zd6j31d50u0qct.jpg)

`a + annotation_logticks(sides = "lr")`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g182oee012j31d50u012j.jpg)

`a + annotation_logticks(sides = "trbl")`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g182pcv7acj31d50u0k1h.jpg)

` a + annotation_logticks(sides = "trbl") + theme(panel.grid.minor = element_blank())`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g182pcv7acj31d50u0k1h.jpg)

```b <- ggplot(msleep, aes(log10(bodywt), log10(brainwt))) +
     geom_point(na.rm = TRUE) +
     scale_x_continuous(name = "body", labels = scales::math_format(10^.x)) +
     scale_y_continuous(name = "brain", labels = scales::math_format(10^.x)) +
     theme_bw() + theme(panel.grid.minor = element_blank())```
     
` b + annotation_logticks()`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g182wj5zk8j31d50u0tf8.jpg)

``` t = ggplot(msleep, aes(bodywt, brainwt)) + geom_point() + coord_trans(x = "log10" , y = "log10") + theme_bw()```

```t + annotation_logticks(scaled = FAKSE)```

![](https://ws3.sinaimg.cn/large/006tKfTcly1g18335mji2j31d50u045z.jpg)

```a + annotation_logticks(
      short = unit(.5,"mm"),
      mid = unit(3,"mm"),
      long = unit(4,"mm"))```
      


![](https://ws2.sinaimg.cn/large/006tKfTcly1g1835lwsq3j31d50u0dpo.jpg)

*************

`annotation_map`

****************

### description

display a fixed map on a plot

### Usage

annotation_map(map,...)

...

### example
```if (require("maps")) {
    usamap <- map_data("state")
    seal.sub <- subset(seals, long > -130 & lat < 45 & lat > 40)
    ggplot(seal.sub, aes(x = long, y = lat)) +
      annotation_map(usamap, fill = "NA", colour = "grey50") +
      geom_segment(aes(xend = long + delta_long, yend = lat + delta_lat))
    seal2 <- transform(seal.sub,
      latr = cut(lat, 2),
      longr = cut(long, 2))
    ggplot(seal2,  aes(x = long, y = lat)) +
      annotation_map(usamap, fill = "NA", colour = "grey50") +
      geom_segment(aes(xend = long + delta_long, yend = lat + delta_lat)) +
      facet_grid(latr ~ longr, scales = "free", space = "free")}```
      
      



![](https://ws2.sinaimg.cn/large/006tKfTcly1g183blz9ugj31d50u0kbq.jpg)










