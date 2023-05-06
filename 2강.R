
### R Working Directory
getwd()
setwd("C:\\Users\\everu\\Downloads\\r studio works\\")

data<-read.csv("건강보험심사평가원_의료행위별 성별 연령군별 건강보험 진료 통계_20141231.csv", 
  header=TRUE, fileEncoding="euc-kr")

View(data)

write.csv(data,
          file='sample data.csv',
          fileEncoding='euc-kr')


### What is $, <-

x1<-data$환자수
x2<-data$명세서청구건수
x3<-data$의료행위총사용량
y<-data$의료행위청구금액

res<-lm(y~x1+x2+x3)
coef<-res$coefficients

coef


### Summary
summary(data)
summary(res)

summary(res)$coefficients
summary(res)$coefficients[1, 1]
summary(res)$coefficients[1:4, 1:3]

a<-summary(res)$coefficients[1:4, 1:3]

write.csv(a, file='sample results.csv')


### Column, Matrix, Data frame
col<-c(1:20)
mat<-matrix(c(1:20), nrow = 4, ncol = 5)
df<-data.frame(mat)

col
mat
df

## Matrix vs Data Frame?
# Very similar, but some operations only work on data frames, but not matrices


### Dimension: Shape of matrix/data frame
dim(mat)
dim(df)
dim(data)


### Library
rename(data, year = 진료년도, sex = 성별)

library(dplyr)
new_data<-rename(data, year = 진료년도, sex = 성별)
summary(new_data)

install.packages('glmnet')
library(glmnet)

X<-data.frame(x1, x2, x3)
lasso<-glmnet(X, y, lambda=0.1,
              family='gaussian', alpha=1)
lasso$beta


### Check & Delete Not Available (NA) observations
withna<-matrix(c(1:18, NA, NA), nrow = 4, ncol = 5)

View(withna)

is.na(withna)
is.na(withna[,5])

na.omit(withna)

withna<-as.data.frame(withna)
na.omit(withna)



### Select, Filter
selected<-select(new_data, 'year', 'sex')
selected<-select(new_data, c('year', 'sex'))
nonselected<-select(new_data, -c('year', 'sex'))

View(selected)
View(nonselected)

male<-filter(new_data, sex=='남')
female<-filter(new_data, sex=="여")

View(male)
View(female)

high<-filter(new_data, 환자수>mean(data$환자수))
low<-filter(new_data, 환자수<=mean(data$환자수))

View(high)
View(low)



### Loop

for (x in 1:10) {
  print(x)
  }


cols<-c(1:10)
for (x in cols) {
  print(x)
}



for (x in cols) {
  if (x<5) {
    print(x)
  }
   else {
    print(x-4)
  }
}


for (x in cols) {
  if (x<5) {
    print(x)
  }
  else if (x<10) {
    print(x-4)
  }
  else {
    print("FINISH")
  }
}


for (i in 1:7) {
  print(cols[i])
}



KOR<-c(1, 0, 4, 5, 2)
JAP<-c(0, 4, 3, 3, 2)


for (i in 1:5) {
  if (KOR[i]==JAP[i]) {
    print(paste(KOR[i], ":", JAP[i], " TIE"))
    }
  else if (KOR[i]>JAP[i]) {
    print(paste(KOR[i], ":", JAP[i], "KOREA WIN"))
    }
  else {
    print(paste(KOR[i], ":", JAP[i], "JAPAN WIN"))
  }
}


for (i in 1:5) {
  for (j in 1:5) {
    if (KOR[i]==JAP[j]) {
      print(paste(KOR[i], ":", JAP[j], " TIE"))
    }
    else if (KOR[i]>JAP[j]) {
      print(paste(KOR[i], ":", JAP[j], "KOREA WIN"))
    }
    else {
      print(paste(KOR[i], ":", JAP[j], "JAPAN WIN"))
    }
  }
}



### Function

f<-function(x) {
  x^2
}

f(8)
f(10)


g<-function(x, y) {
  x*y
}

g(8, 10)


h<-function(KOR, JAP) {
  for (i in 1:5) {
    if (KOR[i]==JAP[i]) {
      print(paste(KOR[i], ":", JAP[i], " TIE"))
    }
    else if (KOR[i]>JAP[i]) {
      print(paste(KOR[i], ":", JAP[i], "KOREA WIN"))
    }
    else {
      print(paste(KOR[i], ":", JAP[i], "JAPAN WIN"))
    }
  }
}

a<-c(1:5) ##from 1~5 (1:10 = from 1~10)
b<-c(0, 2, 4, 2, 1)

h(a, b)




######### Homework ############
num<-as.matrix(data$유병자수)

dim(num)


f<-function(x) {
  cat<-c()
  for (i in 1:dim(x)[1]) {
    #############
    ## Fill in codes ##
    ################
  }
  output<-data.frame(x, cat)
  View(output)
}

f(num)


