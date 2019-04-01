*********

`geom_boxplot`

***********

### description

The boxplot compactly displays the distribution of a continuous variable. It visualises five summary statistics(the median, two hinges and two whiskers), and all "outlying" points individually.

### Usage

`geom_boxplot(mapping = NULL, data = NULL, stat = "boxplot", position = "dodge2", ..., outlier.colour = NULL, outlier.color = NULL, outlier.fill = NULL, outlier.shape = 19,outlier.size = 1.5, outlier.stroke = 0.5, outlier.alpha = NULL, notch = FALSE, notchwidth = 0.5, varwidth = FALSE, na.rm = FALSE, show.legend = NA,inherit.aes = TRUE)`

`stat_boxplot(mapping = NULL, data = NULL, geom = "boxplot", position = "dodge2", ..., coef = 1.5, na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

### Arguments

...

### Summary statistics

The lower and upper hinges correspond to the first and third quartiles (the 25th and 75th percentiles). This differs slightly from the method used by the boxplot() function, and may be apparent with small samples. See boxplot.states() for for more information on how hinge positions are calculated for boxplot().

The upper whisker extends from the hinge to the largest value no further than 1.5 * IQR from the hinge (where IQR is the inter-quartile range, or distance between the first and third quartiles). The lower whisker extends from the hinge to the smallest value at most 1.5 * IQR of the hinge. Data beyond the end of the whiskers are called "outlying" points and are plotted individually.

In a notched box plot, the notches extend 1.58 * IQR / sqrt(n). This gives a roughly 95% confidence interval for comparing medians. See McGill et al. (1978) for more details.

### Aesthetics

...

### Computed variables

...

### references

...

### see also

...

### example

`p = ggplot(mpg, aes(class, hwy))`

`p + geom_boxplot()`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1n4qzk7ibj31d80u0gzo.jpg)

`p + geom_boxplot() + coord_flip()`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1n4qgx6ypj31d80u0ao9.jpg)

`p + geom_boxplot(notch = TRUE)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1n4s7nwk4j31d80u017e.jpg)

`p + geom_boxplot(varwidyh = TRUE)`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1n4ugg7fbj31d80u0k5j.jpg)

`p + geom_boxplot(fill = "white", colour = "#3366FF")`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1n4vqh08bj31d80u04d0.jpg)

`p + geom_boxplot(outlier.colour = "red", outlier.shape = 1)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1n4x7gd5nj31d80u0k5j.jpg)

Remove outliers when overlaying boxplot with original data points

`p + geom_boxplot(outlier.shape = NA) + geom_jitter(width = 0.2)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1n4zammuej31d80u07k4.jpg)

Boxplots are automatically dodged when any aesthetic is a factor

`p + geom_boxplot(aes(colour = drv))`

![](https://ws4.sinaimg.cn/large/006tKfTcly1g1n517ei8zj31d80u0k6k.jpg)

You can also use boxplots with continuous x, as long as you supply

a grouping variable. cut_width is particularly useful

`ggplot(diamonds, aes(carat, price)) + geom_boxplot(aes(group = cut_width(carat, 0.25)))`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1n54fgcelj31d80u01d3.jpg)

`ggplot(diamonds, aes(carat, price)) + geom_boxplot()`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1n55ltzncj31d80u07h8.jpg)

`ggplot(diamonds, aes(carat,price)) + geom_boxplot(aes(group = cut_width(carat, 0.25)), outlier.alpha = 0.1)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1n57hzsczj31d80u07ox.jpg)

It's possible to draw a boxplot with your own computations if you use stat = "identity"

`y = rnorm(100)`

`df = data.frame(x= 1, y0 = min(y), y25 = quantile(y, 0.25), y50 = median(y), y75 = quantile(y, 0.75), y100 = max(y))`

`ggplot(df, aes(x)) + geom_boxplot(aes(ymin = y0, lower = y25, middle = y50, upper = y75, ymax = y100), stat = "identity")`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1n5cp90xuj31d80u0492.jpg)


