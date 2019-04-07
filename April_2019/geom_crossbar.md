************

`geom_crossbar`

************

### description

Various ways of representing a vertical interval defined by x, ymin and ymax.Each case draws a single graphical object.

### Usage

`geom_corssbar(mapping = NULL, data = NULL, stat = "identity", position = "identity", ..., fatten = 2.5, na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

`geom_errorbar(mapping = NULL, data = NULL, stat = "identity", position = "identity", ..., fatten = 2.5, na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

`geom_linerange(mapping = NULL, data = NULL, stat = "identity", position = "identity", ..., na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

`geom_pointrange(mapping = NULL, data = NULL, stat = "identity", position = "identity", ...na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

### Arguments

...

### Aesthetics

...

### see also

...

### Example

`df = data.frame(trt = factor(c(1, 1, 2, 2)), resp = c(1, 5, 3, 4), group = factor(c(1, 2, 1, 2)), upper = c(1.1, 5.3, 3.3, 4.2), lower = c(0.8, 4.6, 2.4, 3.6))`

`p = ggplot(df, aes(trt, resp, colour = group))`

`p + geom_linerange(aes(ymin = lower, ymax = upper))`

![](https://ws2.sinaimg.cn/large/006tNc79ly1g1tuld5kvlj31d80u0wpk.jpg)

`p + geom_pointrange(aes(ymin = lower, ymax = upper))`

![](https://ws4.sinaimg.cn/large/006tNc79ly1g1tummktfgj31d80u0k2g.jpg)

`p + geom_crossbar(aes(ymin = lower, ymax = upper), width = 0.2)`

![](https://ws3.sinaimg.cn/large/006tNc79ly1g1tuo3a7z9j31d80u0qes.jpg)

`p + geom_errorbar(aes(ymin = lower, ymax = upper), width = 0.2)`

![](https://ws2.sinaimg.cn/large/006tNc79ly1g1tupayt9vj31d80u0wpj.jpg)

`p + geom_line(aes(group)) + geom_errorbar(aes(ymin = lower, ymax = upper), width = 0.2)`

![](https://ws2.sinaimg.cn/large/006tNc79ly1g1tur47lhnj31d80u0al9.jpg)

`p = ggplot(df, aes(trt, resp, fill = group))`

`p + geom_col(position = "dodge") + geom_errorbar(aes(ymin = lower, ymax = upper), position = "dodge", width = 0.25)`

![](https://ws4.sinaimg.cn/large/006tNc79ly1g1tuu2enz2j31d80u0k5y.jpg)

`dodge = position_dodge(width = 0.9)`

`p + geom_col(position = dodge) + geom_errorbar(aes(ymin = lower, ymax = upper), position = dodge, width = 0.25)`

![](https://ws1.sinaimg.cn/large/006tNc79ly1g1tuxicnjfj31d80u0177.jpg)

`p + geom_col(position = "dodge2") + geom_errorbar(aes(ymin = lower, ymax = upper), position = position_dodge2(width = 0.5, padding = 0.5))`

![](https://ws1.sinaimg.cn/large/006tNc79ly1g1tuzuj1e6j31d80u0qij.jpg)






