************

`expand_limits`

************

### description


有时，您可能希望确保所有面板或所有绘图都包含一个值。这个函数是一个围绕geom_blank()的瘦包装器，可以很容易地添加这样的值。

### Usage

`expand_limits(...)`

### Arguments

...

### example

`p = ggplot(mtcars, aes(mpg, wt)) + geom_point`

`p + expand_limits(x = 0)`

`p + expand_limits(y = c(1, 9))`

` ggplot(mtcars, aes(mpg, wt)) +
      geom_point(aes(colour = cyl)) +
      expand_limits(colour = seq(2, 10, by = 2))`
      
![](https://ws2.sinaimg.cn/large/006tKfTcly1g1hh9nfxkij31d50u0dt9.jpg)

`ggplot(mtcars, aes(mpg, wt)) +
      geom_point(aes(colour = factor(cyl))) +
      expand_limits(colour = factor(seq(2, 10, by = 2)))`
      
![](https://ws4.sinaimg.cn/large/006tKfTcly1g1hha7t5e1j31d50u0dup.jpg)

