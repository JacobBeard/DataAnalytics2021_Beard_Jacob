head(data3$EPI,na.rm=TRUE)
fivenum(data1$EPI,na.rm=TRUE)
head(data3$EPI)

print("test")

#read.csv("/$home/desktop/multivariate.csv")
multivariate <- read.csv(file.choose(),header=T)
attach(multivariate)
names(multivariate)
View(multivariate)
mm <- lm(Homeowners ~ Immigrant)
mm
plot(Immigrant,Homeowners)
HP<- Homeowners/Population
PD<-Population/area
mm<-lm(Immigrants~Income+Population+HP+PD)
Imm <- lm(Immigrants)