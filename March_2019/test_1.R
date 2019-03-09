# Draw a histogram
library(ggplot2)
hist(mtcars$mpg)
#result Rplot.png

# The breaks parameter determines the group spacing
hist(mtcars$mpg, breaks = 10)
#result Rplot01.png

#also can ues qplot
qplot(mtcars$mpg)
#result Rplot02.png

#equivalent
qplot(mpg, data = mtcars, binwidth = 4)
ggplot(mtcars, aes(x = mpg)) + geom_histogram(binwidth = 4)
#result Rplot03.png
