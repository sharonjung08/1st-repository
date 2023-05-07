# createreadmefile 
1) (above) # and space ______ is title
## step 1
2) (above) ## and space ______ is subtitle

1강 정리
```
data(esoph) <- esoph is a database that's already in R studio so no need for additional download but just view.
summary(esoph$ncases) <- viewing summary

hist(esoph$ncases) <-viewing the histogram

hist(esoph$ncases,
     main="Histogram of Esophageal Cancer", <-title
     xlab="Number of cases", <-
     col="darkmagenta") <- color
    
scaled<-scale(esoph$ncases) <- setting the title as "scaled"
summary(scaled) <- viewing the summary (max, min, intqua, etc)
hist(scaled) <- viewing histogram

data<-read.csv(
  "C:\\Users\\everu\\Downloads\\국립암센터_24개종 암 유병률_20221228.CSV", <-important! first download the file, and add \. 
  header=TRUE, fileEncoding="euc-kr") <- since the file is written as korean, write "euc-kr"

View(data) <- view data

xyz<-data$환자수 <- inside the big file "data", there is a small category "환자수". set the name of the data as "xyz" for convenience
hist(xyz)

max(xyz)
min(xyz)
quantile(xyz)

abcde<-scale(data$환자수)
summary(abcde)
hist(abcde)
```
