# createreadmefile 
############# HW ################    
```
data <- read.csv("C:\\Users\\everu\\Downloads\\welfare-small.csv", header=TRUE)

summary(data)

data$marital<-as.factor(data$marital)
data$sex<-as.factor(data$sex)
```

## Estimate the effects of w on y: Control for age & sex
```
1)heh<-lm(y~w+age+sex,data=data)   
summary(heh)
```
1)age, sex를 통제한 상태에서 w가 1씩 증가할수록 y는 coefficient 만큼 변한다.   

## Estimate the effects of w on y: Control for polviews, educ, & marital
```
hey<-lm(y~w+polviews+educ+marital,data=data)
2)summary(hey) 
```
2)if there are useless values, accuracy might decrease / values uncorrelated with outcome (irrelevant)

## Compare two models: Which model is better, controlling for age & sex VS controlling for  polviews, educ, & marital?
## How? compare the r-squared values: closer to 1 is a better figure

```
data <- read.csv("C:\\Users\\everu\\Downloads\\respiratory.csv", header=TRUE)

summary(data)

data$visit<-as.factor(data$visit)
data$center<-as.factor(data$center)

summary(data)

data$treat<-as.factor(data$treat)
summary(data)
```

## Estimate the effects of treat on outcome: Control for age & sex
```
yey<-lm(outcome~treat+age+sex,data=data)
summary(yey)
```
sexM = female -> male로 바뀔때
treatP = factor 변수

## Estimate the effects of treat on outcome: Control for center & visit
```
wow<-lm(outcome~treat+center+visit, data=data)
summary(wow)
```

## Compare two models: Which model is better, controlling for age & sex VS controlling for  center & visit?
## "wow" is a better figure, because the adjusted r-squared value is closer to 1 than "yey"



