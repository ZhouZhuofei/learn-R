# 绘制箱线图
plot(ToothGrowth$supp, ToothGrowth$len)
boxplot(len ~ supp, data = ToothGrowth)
qplot(ToothGrowth$supp, ToothGrowth$len, geom = "boxplot")
ggplot(ToothGrowth, aes(x = supp, y = len)) + geom_boxplot()

###dose是数值型，必须转化为因子型
library(ggplot2)
boxplot(len ~ supp + dose, data = ToothGrowth)
qplot(interaction(ToothGrowth$supp, ToothGrowth$dose),ToothGrowth$len, geom = "boxplot")
ggplot(ToothGrowth, aes(x = interaction(supp, dose), y = len)) + geom_boxplot()
#result Rplot06.png

#绘制函数图像
curve(x^3 - 5*x, from = -4, to = 4)
#result Rplot07.png

 myfun = function(xvar){
 1/(1+ exp(-xvar +10))
 }
 curve(myfun(x), from = 0, to = 20)
 curve(1 - myfun(x), add = TRUE, col = "red")
 #result Rplot08.png
 
 ggplot(data.frame(x = c(0,20)),aes(x = x)) + stat_function(fun = myfun, geom = "line")
 #result Rplot09.png
