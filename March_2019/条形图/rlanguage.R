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
ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) + geom_bar(position = "dodge", stat = "identity", colour = "black") + scale_fill_brewer(palette = "Pastell")
#
#绘制频数条形图
ggplot(diamonds, aes(x=cut)) + geom_bar()
#result Rplot15.png
ggplot(diamonds, aes(x=carat)) + geom_bar()
#result Rplot16.png

upc = subset(uspopchange, rank(Change)>40)
ggplot(upc, aes(x=Abb, y=Change, fill=Region)) + geom_bar(stat = "identity")
#result Rplot17.png

ggplot(upc, aes(x=Abb, y=Change, fill=Region)) + geom_bar(stat = "identity", colour = "black") + scale_fill_manual(values = c("#669933", "#FFCC66")) + xlab("State")
#result Rplot18.png

#对正负条形图分别着色

csub = subset(climate, Source=="Berkeley" & Year >= 1900)
csub$pos = csub$Anomaly10y >=0
ggplot(csub, aes(x=Year, y=Anomaly10y, fill=pos)) + geom_bar(stat = "identity", position = "identity")
#result Rplot19.png
#
#change color
ggplot(csub, aes(x=Year, y=Anomaly10y, fill=pos)) + geom_bar(stat = "identity", position = "identity", colour = "black", size =0.25) + scale_fill_manual(values=c("#CCEEFF", "#FFDDDD"), guide=FALSE)
#reult Rplot20
