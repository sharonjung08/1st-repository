# createreadmefile

```
####### HW 4 ######
data<-read.csv(
  "C:\\Users\\socra\\Downloads\\건강보험심사평가원_의료행위별 성별 연령군별 건강보험 진료 통계_20141231.csv", 
  header=TRUE, fileEncoding="euc-kr")

summary(data)


# t-test
t.test(의료행위청구금액~성별, data)


# ANOVA test
results<-aov(의료행위청구금액~연령군, data)
summary(results)


# Pearson Correlation
x<-data$환자수
y<-data$의료행위청구금액

cor.test(x, y,  method = "pearson")


### 환자수 ~ 의료행위청구금액
### 명세서청구건수 ~ 의료행위청구금액
### 의료행위총사용량 ~ 의료행위청구금액


x1<-data$환자수
x2<-data$명세서청구건수
x3<-data$의료행위총사용량

y<-data$의료행위청구금액

X<-list(x1, x2, x3)

for (i in X) {
  correlation<-cor.test(i, y,  method = "pearson")
  print(correlation)
  print(correlation$estimate)
  print(correlation$p.value)
}




############# 5강 Average Treatment Effects ############
# data <- read.csv(""C:\Users\everu\Downloads\welfare-small.csv")
data <- read.csv("C:\\Users\\everu\\Downloads\\welfare-small.csv", header=TRUE)

summary(data)

# Treatment w:  "Treated" (1) or "Not treated" (0)
treatment <- "w"

# Outcome: y
outcome <- "y"


# Additional covariates
covariates <- c("age", "polviews", "income", "educ", "marital", "sex")


# T-test
t.test(y ~ w, data=data)



# Compare Treated vs Not treated groups
library(dplyr)

treated<-filter(data, w==1)
nottreated<-filter(data, w==0)

summary(treated)
summary(nottreated)

hist(treated$age)
hist(nottreated$age)

t.test(age~w, data)
t.test(income~w, data)
t.test(educ~w, data)






######### HW 5 ############
data <- read.csv("C:\\Users\\everu\\Downloads\\respiratory.csv", header=TRUE)

summary(data)

# Treatment w:  "Treated" (1) or "Not treated" (0)
treatment <- "treat"

# Outcome: y
outcome <- "outcome"


# Additional covariates
covariates <- c("age", "sex")


# T-test
t.test(outcome ~ treat, data=data)

treated<-filter(data,treat=="P")
nottreated<-filter(data, treat=="A")

summary(treated)
summary(nottreated)

hist(treated$age)
hist(nottreated$age) ##difference no because p value > 0.05 and 0 between confidence interval

t.test(age~treat, data)
t.test(income~w, data)
t.test(educ~w, data)
```
