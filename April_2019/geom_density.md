****************
`geom_density`
*****************

### description

Computes and draws kernel density estimate, which is a smoothed version of the histogram.This is a useful alternative to thehistogram for continuous data that comes from an underlying smooth discription.

### Usage

`geom_density(mapping = NULL, data = NULL, stat = "density", position = "identity", ... na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

`stat_density(mapping = NULL, data = NULL, geom = "area", position = "stack", ..., bw = "nrd0", adjust = 1, kernel = "gaussian", n = 512, trim = FALSE, na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

### Arguments

...

### aesthetics

...

### Computed variables

...

### see also

...

### Example

`ggplot(diamonds, aes(carat)) + geom_density()`

![](https://ws3.sinaimg.cn/large/006tNc79ly1g1w5xny6jhj31d80u04gz.jpg)

`ggplot(diamonds, aes(carat)) + geom_density(adjust = 1/5)`

![](https://ws1.sinaimg.cn/large/006tNc79ly1g1w5z8s2eej31d80u0kcr.jpg)

`ggplot(diamonds, aes(carat)) + geom_density(adjust = 5)`

![](https://ws3.sinaimg.cn/large/006tNc79ly1g1w609xdofj31d80u0wv9.jpg)

`ggplot(diamonds, aes(depth, colour = cut)) + geom_density() + xlim(55, 70)`

![](https://ws4.sinaimg.cn/large/006tNc79ly1g1w6261jm6j31d80u04js.jpg)

`ggplot(diamonds, aes(depth, fill = cut, colour = cut)) + geom_density(alpha = 0.1) + xlim(55, 70)`

![](https://ws2.sinaimg.cn/large/006tNc79ly1g1w63r6ql4j31d80u0azg.jpg)

`ggplot(diamonds, aes(carat, fill = cut)) + geom_density(position = "stack")`

![](https://ws2.sinaimg.cn/large/006tNc79ly1g1w65an5l9j31d80u0hdi.jpg)

`ggplot(diamonds, aes(carat, stat(count), fill = cut)) + geom_density(position = "stack")`

![](https://ws1.sinaimg.cn/large/006tNc79ly1g1w66wmu0pj31d80u0hbn.jpg)

`ggplot(diamonds, aes(carat, stat(count), fill = cut)) + geom_density(position = "fill")`

![](https://ws4.sinaimg.cn/large/006tNc79ly1g1w688g0h6j31d80u0x5b.jpg)






