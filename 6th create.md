# createreadmefile

```
###### Ch. 6 ######
data('esoph') #Smoking, Alcohol and (O)esophageal Cancer

getwd()
setwd("C:\\Users\\everu\\Downloads\\r studio works\\")

data<-read.csv(
  "건강보험심사평가원_의료행위별 성별 연령군별 건강보험 진료 통계_20141231.csv", 
  header=TRUE, fileEncoding="euc-kr")

#Linear Regression between "Number of Cases"-->"Number of Controls"
reg<-lm(ncases~ncontrols, data = esoph)
summary(reg)


#Pearson Correlation between "Number of Cases" vs "Number of Controls"
correlation<-cor.test(esoph$ncases, esoph$ncontrols, method = "pearson")
correlation


# # t-test vs linear regression
# ##data <- read.csv("C:\\Users\\socra\\Downloads\\respiratory.csv", header=TRUE)
# 
# ##summary(data)
# 
# ##t.test(outcome~treat, data)
# 
# reg<-lm(outcome~treat, data = data)
# summary(reg)

#############

summary(data)

lel<-lm(의료행위총사용량~의료행위청구금액, data = data) #앞(총사용량) = y, 뒤(청구금액)=x
summary(lel) #2 values of estimate (if negative)
#r-squared=closer to 1 is better

##if there is 0 between x~y <- confidence interval 
```

