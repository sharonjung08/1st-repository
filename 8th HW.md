## createreadmefile

###### Homework: Self-Project ######

## (1) Import dataset: "건강보험심사평가원_의료행위별 성별 연령군별 건강보험 진료 통계_20141231.csv"
# Hint: read.csv()
getwd()
setwd("C:\\Users\\everu\\Downloads\\r studio works\\")

data<-read.csv("건강보험심사평가원_의료행위별 성별 연령군별 건강보험 진료 통계_20141231.csv", 
               header=TRUE, fileEncoding="euc-kr")

View(data)
summary(data)
## (2) Draw histogram of numeric variables ##
# Hint: hist()

hist(data$환자수,
     main="Histogram of Number of Patients",
     xlab="Number of Patients",
     col="darkmagenta",
     xlim = c(10, 10000), ylim = c(10, 10000), breaks = 2000)
hist(data$명세서청구건수,
     main="Histogram of Number of Bills",
     xlab="Number of Bills",
     col="blue",
     xlim = c(10, 10000), ylim = c(10, 10000), breaks = 50000)
hist(data$명세서청구건수,
     main="Histogram of Number of Bills",
     xlab="Number of Bills",
     col="black",
     xlim = c(10, 10000), ylim = c(10, 10000), breaks = 50000)
hist(data$의료행위총사용량,
     main="Histogram of Number of Total Medical Service",
     xlab="Number of Total Medical Service",
     col="green",
     xlim = c(10, 10000), ylim = c(10, 10000), breaks = 50000)
hist(data$의료행위청구금액,
     main="Histogram of Total Cost of Medical Service",
     xlab="Total Cost of Medical Service",
     col="red",
     xlim = c(10, 10000000), ylim = c(10, 10000), breaks = 500000)
## (3) Rename variable names into English:
## 성별 --> gender
## 연령군 --> age
## 환자수 --> patients
## 명세서청구건수 --> bills
## 의료행위총사용량 --> medical
## 의료행위청구금액 --> cost

gender<-data$성별
age<-data$연령군
patients<-data$환자수
bills<-data$명세서청구건수
medical<-data$의료행위총사용량
costs<-data$의료행위청구금액

# Hint: rename()

library(dplyr) #when rename, (or other functions that not work)
#derive library
renamee<-rename(data, gender = 성별, age = 연령군, patients = 환자수, bills=명세서청구건수, medical = 의료행위총사용량, cost = 의료행위청구금액)
View(renamee)
summary(renamee)

summmary<-as.factor(renamee$age)
summary(summmary)
## (4) Divide the whole dataset into Male vs Female groups ##
# Hint: filter()

male<-filter(renamee, gender=='남')
female<-filter(renamee, gender=="여")

## (5) Check whether "patients", "bills", "medical", "cost" are statistically different among gender / age groups
# Hint: t.test(), aov()
abc<-t.test(patients ~ gender, renamee)
abc #just abc

abc$p.value
abc$conf.int

bcd<-aov(bills~age,data) 
hah<-aov(patients~age,data)
huh<-aov(medical~age,data)
hih<-aov(cost~age,data)
#bill is different depending on age
summary(bcd) #difference is statistically significant
summary(hah)
summary(huh)
summary(hih)

X<-list(bills,patients,medical,cost) 
#add list(name) or c(vector)
for (i in X) {
  anovaa<-aov(i~age, data)
  print(summary(anovaa))
}
## (6) Check if "patients" and "cost" are significantly correlated & find correlation coefficient
# Hint: cor.test()

x<-renamee$patients
y<-renamee$cost

cor.test(x, y, method = "pearson")
#cor=correlation coefficient


## (7) Check whether "patients" has significant effects on "cost", using linear regression
# Hint: lm()

pop<-lm(cost~patients, data = renamee) #앞(총사용량) = y, 뒤(청구금액)=x
summary(pop) #2 values of estimate (if negative)
#patient가 1씩 증가할때 cost는 2.548e+o4씩 변화

## (8) Interpret results of the linear regression
#p-value = significant
#r-squared = not so close to 1

## (9) Draw plots of the correlation & linear regression analyses
# Hint: ggplot()

library(ggplot2)
ggplot(renamee, aes(patients, cost)) + #cost=y patients=x
  geom_point() + 
  geom_smooth(method = lm)

## (10) Check whether "gender", "patients", "bills", and "medical" have significant effects on "cost", 
## using multiple linear regression, and interpret the results
# Hint: lm()

ioio<-lm(costs~gender+patients+bills+medical, data = renamee)
summary(ioio)
