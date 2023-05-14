# createreadmefile 
####### HW 4 ######
data<-read.csv(
  "건강보험심사평가원_의료행위별 성별 연령군별 건강보험 진료 통계_20141231.csv", 
  header=TRUE, fileEncoding="euc-kr")

summary(data)

# t-test

a<-t.test(의료행위청구금액 ~ 성별, data)

a$p.value
a$conf.int ##difference O, alternative hypothesis O, not include 0

a 

# ANOVA test

results<-aov(의료행위청구금액 ~ 연령군, data) ##this case 의료...front
summary(results) ##연령군 집단에 따라서 의료행위청구금액의 차이가 있는지 없는지 
##p-value= <2e-16 2 times 10 to the power of -16 / 2e+16 this means 2 times
##power of 16

##HW

x1<-data$환자수
x2<-data$명세서청구건수
x3<-data$의료행위총사용량

y<-data$의료행위청구금액

x<-list(x1,x2,x3)

for (i in x) {
  correlation<-cor.test(i,y,method="pearson")
  print(correlation)
  print(correlation$estimate)
  print(correlation$p.value)
}



correlation<-cor.test(data$환자수, data$의료행위청구금액, method = "pearson")
correlation
correlation$p.value
correlation$estimate
correlation$conf.int

correlation<-cor.test(data$명세서청구건수, data$의료행위청구금액, method = "pearson")
correlation
correlation$p.value
correlation$estimate
correlation$conf.int

correlation<-cor.test(data$의료행위총사용량, data$의료행위청구금액, method = "pearson")
correlation
correlation$p.value
correlation$estimate
correlation$conf.int

# Pearson Correlation

correlation<-cor.test(data$의료행위총사용량, data$의료행위청구금액, method = "pearson")


correlation ## if confidence interval (minimum & maximum) doesn't include p val<0.05
correlation$p.value ## p-value<0.05, therefore significant
correlation$estimate ## how much they are linked with each other (correlation) == correlation coefficient/상관계수
correlation$conf.int ##
