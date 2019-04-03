***********

`geom_count`

*************

### description 
 
This is a variant geom_point() that counts the number of observations at each location, then maps the count to point area. It useful when you have discrete data and overplotting.

### Usage

`geom_count(mapping = NULL, data = NULL, stat = "sum", position = "identity", ..., na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

`stat_sum(mapping = NULL, data = NULL, geom = "point", position = "identity", ..., na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)`

### Arguments

...

### Aesthetics

...

### Computed variable

...

### See also

...

### Examples

`ggplot(mpg, aes(cty, hwy)) + geom_point()`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1prnboa19j31d80u07jb.jpg)

`ggplot(mpg, aes(cty, hwy)) + geom_count()`

![](https://ws2.sinaimg.cn/large/006tKfTcly1g1pro59j6xj31d80u0h0x.jpg)

best used in conjunction with scale_size_area which ensures that counts of zero would be given size 0. Doesn't make much different here because the smallest count is already close to 0.

`ggplot(mpg, aes(cty, hwy)) + geom_count() + scale_size_area()`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1prrbi2r0j31d80u0to2.jpg)

Display proportions instead of counts By default, all categorical variable in the plot from the groups. Specifying geom_count without a group identifier leads to a plot which is not useful:

`d = ggplot(diamonds, aes(x = cut, y = clarity))`

`d + geom_count(aes(size = stat(prop)))`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1prw9l4b8j31d80u015w.jpg)

To correct this problem and achieve a more desirable plot, we need to specify which group the proportion is to be calculated over.

`d + geom_count(aes(size = stat(prop), group = 1)) + scale_size_area(max_size = 10)`

![](https://ws3.sinaimg.cn/large/006tKfTcly1g1prz43l12j31d80u0qg0.jpg)

`d + geom_count(aes(size = stat(prop), group = cut)) + scale_size_area(max_size = 10)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1ps112c7aj31d80u04bj.jpg)

`d + geom_count(aes(size = stat(prop), group = clarity)) + scale_size_area(max_size = 10)`

![](https://ws1.sinaimg.cn/large/006tKfTcly1g1ps2ius9tj31d80u0wsk.jpg)




