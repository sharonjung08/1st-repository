# createreadmefile 
data<-read.csv(
  "C:\\Users\\everu\\Downloads\\국립암센터_24개종 암 유병률_20221228.CSV",
  header=TRUE, fileEncoding="euc-kr")

View(data)



xyz<-data$환자수
hist(xyz)

max(xyz)
min(xyz)
quantile(xyz)

abcde<-scale(data$환자수)
summary(abcde)
hist(abcde)
