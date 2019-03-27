***********

`expand_scale`

***********

### Usage

`expand_scale(mult = 0, add = 0)`

### Argument

...

### example

`ggplot(mtcars) + geom_bar(aes(x = factor(cyl))) + scale_y_continuous(expand = expand_scale(mult = c(0,.1)))`

