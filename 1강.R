data('esoph')

View(esoph)
/]]
summary(esoph$ncases)

hist(esoph$ncases)

hist(esoph$ncases,
     main="Histogram of Esophageal Cancer",
     xlab="Number of cases",
     col="darkmagenta")


hist(esoph$ncontrols)

max(esoph$ncases)
min(esoph$ncases)
quantile(esoph$ncases)

scaled<-scale(esoph$ncases)
summary(scaled)

hist(scaled)

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