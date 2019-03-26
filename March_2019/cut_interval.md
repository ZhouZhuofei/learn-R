***********

`cut_interval`

**********

### description

cut_interval使n组具有相同的范围，cut_number使n组具有(近似)相同的观察次数;cut_width使组的宽度为宽度。

### Usage

`cut_interval(x, n = NULL, length = NULL, ...)`

`cut_number(x, n = NULL, ...)`

`cut_width(x, width, center = NULL, boundary = NULL, closed = c("right", "left"))`

### Arguments

...

### example

`table(cut_interval(1:100, 10))`

`table(cut_interval(1:100, 11))`

`table(cut_number(runif(1000), 10))`

`table(cut_width(runif(1000), 0.1))`

`table(cut_width(runif(1000), 0.1, center = 0))`
