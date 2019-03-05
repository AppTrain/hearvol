
f = download.file('https://drive.google.com/open?id=0B98qpkK5EJembFc5RmVKVVJPdGc','state.csv')


heartvol <- read.csv(file='https://storage.googleapis.com/kaggle-competitions-data/kaggle/4729/59287/train.csv?GoogleAccessId=web-data@kaggle-161607.iam.gserviceaccount.com&Expires=1552072140&Signature=VbDwcQxXmeD7RXtlfvkZqsYEN3ZUojJt1LBqJiJ2W8eWgI%2B0xO6Y5hbYiipBZptLwMGsCKNWl0xBjNE8i0HGDSEKS2doe81LdTf8F0xyWwQiHSZZuvXAu%2BR9VNxGcO92YbI%2Fx767p0IKx3tVJ75xhdORTXhY9F2mpBqx5x2JvvyGlLtyxNeGICEsrB73w1BjBFHNtGXtGVbDPeYbwzt5AbWiBm3y7KQsp2NovrzoeqxzeLnj6UQsR9TZa8bcLAG2DULg8vkhFzeM%2BH5VRL377Ha%2BVyW8eFQeghspCgRXFV4qMgoK9Pf%2BwNno6%2BPgecCQoLH5ZmLquNJurOmn51zziw%3D%3D&ndplr=1')

heartvol

mean(heartvol[['Systole']],0.05)

mean(heartvol[['Systole']])

median(heartvol[['Systole']])

mean(heartvol[[3]])

mean(heartvol[['Diastole']])

weighted.mean(heartvol[['Diastole']],w=heartvol[[2]])

install.packages('matrixStats')


library('matrixStats')

weightedMedian(heartvol[['Diastole']],w=heartvol[[2]])

sd(heartvol[['Diastole']])

IQR(heartvol[['Diastole']])

mad(heartvol[['Diastole']])

var(heartvol[['Diastole']])


sqrt(var(heartvol[['Diastole']]))

quantile(heartvol[['Diastole']])

boxplot(heartvol[['Diastole']])

hist(heartvol[['Diastole']])

hist(heartvol[['Diastole']],freq=FALSE)
lines(density(heartvol[['Diastole']]),lwd=3,col='blue')

density(heartvol[['Diastole']])


lines(density(heartvol[['Diastole']]))

mode(heartvol[['Diastole']])

uniqv = unique(heartvol[['Diastole']])

uniqv[which.max(tabulate(match(heartvol[['Diastole']], uniqv)))]

plot(heartvol[['Systole']],heartvol[['Diastole']])

length(heartvol)

length(heartvol[['Systole']])

install.packages('corrplot')


library(corrplot)

cor(heartvol[-1])

corrplot(cor(heartvol))

install.packages('ggplot2')


install.packages('hexbin')


library(ggplot2)

library(hexbin)

ggplot(heartvol,(aes(x=Systole, y=Diastole)))  + 
  stat_binhex(colour="white") + 
  theme_bw() + 
  scale_fill_gradient(low="white", high="black") 

nrow(heartvol)


