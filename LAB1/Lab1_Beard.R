#?data.frame
#days <- c('Monday','Tuesday')
#temp <- c(28,30,45)
#RPI_Weather_Week <- data.frame(days,temp)
#head(RPI_Weather_Week)
#str(RPI_Weather_Week)
#-------EXCERCISE 1---------
data1 <-read.csv(file.choose(),header=T)
View(data1)
data2 <-data1$EPI
summary(data2)
View(data2)
fivenum(data2,na.rm=TRUE)
stem(data2)
hist(data2)
hist(data2, seq(30., 95., 1.0), prob=TRUE)
lines(density(data2,na.rm=TRUE,bw=1.))
rug(data2)
?rug
plot(ecdf(data2), do.points=FALSE, verticals=TRUE) 
?ecdf
par(pty="s") 
?par
qqnorm(data2); qqline(data2)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
?qqplot
qqline(x)
#Next Data Set to Analyze:
data3 <-data1$ECOSYSTEM
summary(data3)
View(data3)
fivenum(data3,na.rm=TRUE)
stem(data3)
hist(data3)
hist(data3, seq(0., 100, 1.0), prob=TRUE)
lines(density(data3,na.rm=TRUE,bw=1.))
rug(data3)
plot(ecdf(data3), do.points=FALSE, verticals=TRUE) 
par(pty="s") 
qqnorm(data3); qqline(data3)
x<-seq(0,100,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)
#Next Data Set to Analyze:
data4 <-data1$FISHERIES



#EXERCISE2
EPILand<-data2[Landlock]
summary(data1)
Eland <- EPILand[!is.na(EPILand)]
