install.packages("xlsx")
library("xlsx")
dataset<-read.xlsx("1. Descriptive Statistics.xlsx",sheetIndex=1)
attach(dataset)
head(dataset)
H<-c(7,12,28,8,41)
M<-c("Mar","Apr","May","Jun","Jul")
barplot(H,names.arg=M,main="Rainfall Chart",col="brown",xlab="Rainfall",ylab="Month")
myvar<-c('Current.Salary','After.6.Months','Sal.Begin')
tablebar<-sapply(dataset[myvar],mean)
tablebar
barplot(tablebar,main="Salary Chart",col="red")
a<-c(21,62,10,53)
labels<-c("London","NewYork","Singapore","Mumbai")
pct<-round(a/sum(a)*100)
pct
labels2<-paste(labels,"-",pct,"%")
labels2
pie(a,labels2,main="Percentage Distribution")
mytable<-table(Job.Category)
mytable
pct<-round(mytable/sum(mytable)*100)
pct
labels<-paste(rownames(mytable),"-",pct,"%")
labels
pie(mytable,labels,main="Job Category",col=rainbow(length(labels)))
boxplot(Current.Salary~Education,col="purple")
boxplot(Current.Salary~Job Category,col="purple",xlab="Job Category",ylab="Current.Salary",main="Box Plot")
hist(Education,main="Employee Education",xlab="EducationLevels",col="red")
V<-c(7,12,28,3,41)
plot(V,type="l",col="red",main="Line Gragh")
plot(V,type="p",col="red",main="Line Gragh")
plot(V,type="o",col="red",main="Line Gragh")
plot(V,type="b",col="red",main="Line Gragh")
plot(V,type="s",col="red",main="Line Gragh")


