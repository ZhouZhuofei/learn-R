#
library(gcookbook)
library(ggplot2)
ggplot(pg_mean, aes(x = group, y = weight)) + geom_bar(stat = "identity")
#Rplot10.png

ggplot(BOD, aes(x=Time, y=demand)) + geom_bar(stat = "identity")
#Rplot11.png

ggplot(BOD, aes(x=factor(Time), y=demand)) + geom_bar(stat = "identity")
#Rplot12.png
#默认填充色为黑灰色且没有边框线，通过调整fill参数改变填充色，通过colour加边框线
ggplot(pg_mean, aes(x=group, y=weight)) + geom_bar(stat = "identity", fill = "lightblue", colour = "black")
#reult Rplot13.png

ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) + geom_bar(position = "dodge", stat = "identity")
#result Rplot14.png

ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) + geom_bar(position = "dodge", stat = "identity", colour = "black")
ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) + geom_bar(position = "dodge", stat = "identity", colour = "black")+scale_fill_brewer(palette = "Pastell")
#
#绘制频数条形图

