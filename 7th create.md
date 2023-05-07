# createreadmefile

```
####### Ch.7 Multiple Linear Regression #########
data('esoph')

summary(esoph)

res<-lm(ncases~ncontrols, data = esoph)
summary(res)


res<-lm(ncases~ncontrols+agegp+alcgp, data = esoph)
summary(res)

## Factor Variables
esoph$agegp<-as.factor(esoph$agegp)
esoph$alcgp<-as.factor(esoph$alcgp)



############# HW ################
data <- read.csv("C:\\Users\\everu\\Downloads\\welfare-small.csv", header=TRUE)

summary(data)

data$marital<-as.factor(data$marital)
data$sex<-as.factor(data$sex)

## Estimate the effects of w on y: Control for age & sex
heh<-lm(y~w+age+sex,data=data) ##age, sex를 통제한 상태에서 w가 1씩 증가할수록 y는 coefficient 만큼 변한다. 
##마찬가지로 w랑sex를통제한 상태에서 age가 1씩 증가할수록 y가 coefficient만큼 변화한다.  
summary(heh)

## Estimate the effects of w on y: Control for polviews, educ, & marital
hey<-lm(y~w+polviews+educ+marital,data=data)
summary(hey) ##if there are useless values, accuracy might decrease / values uncorrelated with outcome (irrelevant)

## Compare two models: Which model is better, controlling for age & sex VS controlling for  polviews, educ, & marital?
## How? compare the r-squared values: closer to 1 is a better figure

data <- read.csv("C:\\Users\\everu\\Downloads\\respiratory.csv", header=TRUE)

summary(data)

data$visit<-as.factor(data$visit)
data$center<-as.factor(data$center)

summary(data)

data$treat<-as.factor(data$treat)
summary(data)
## Estimate the effects of treat on outcome: Control for age & sex

yey<-lm(outcome~treat+age+sex,data=data)
summary(yey)
##sexM = female -> male로 바뀔때
##treatP = factor 변수

## Estimate the effects of treat on outcome: Control for center & visit

wow<-lm(outcome~treat+center+visit, data=data)
summary(wow)


## Compare two models: Which model is better, controlling for age & sex VS controlling for  center & visit?
## "wow" is a better figure, because the adjusted r-squared value is closer to 1 than "yey"
```
