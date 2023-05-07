# createreadmefile

```
getwd()
setwd("C:\\Users\\everu\\Downloads\\r studio works\\") <-setting as a file in my computer

x1<-data$환자수
x2<-data$명세서청구건수
x3<-data$의료행위총사용량
y<-data$의료행위청구금액

res<-lm(y~x1+x2+x3) <-지정
coef<-res$coefficients <-when we do summary(res), there are lots of values. just pick out the coefficient values and state that as "ref"
coef <- show the coefficients of res

summary(data)
summary(res)

summary(res)$coefficients
summary(res)$coefficients[1, 1] <-the value that is at x1,y1 is appearing on the screen
summary(res)$coefficients[1:4, 1:3] <- two values at x1,y4 and x1,y3 are appearing

a<-summary(res)$coefficients[1:4, 1:3]

### Column, Matrix, Data frame
col<-c(1:20) <-stating numbers from 1~20
mat<-matrix(c(1:20), nrow = 4, ncol = 5) <-stating numbers from 1 to 20 by 4 rows and 5 columns
df<-data.frame(mat) <-data as matrix form

col 
mat
df

### Dimension: Shape of matrix/data frame
dim(mat) <- stating the dimension structure (e.g. 4,5 or 5,4)
dim(df)
dim(data)

withna<-matrix(c(1:18, NA, NA), nrow = 4, ncol = 5) <-set the matrix data (numbers from 1-18 as a form of 4 rows and 5 cols) as withna

View(withna)

is.na(withna) <-asking if the value is NA or not. if yes, TRUE if no, FALSE
is.na(withna[,5]) <-asking only for 5th columns

### Select, Filter
selected<-select(new_data, 'year', 'sex')
selected<-select(new_data, c('year', 'sex')) <-only asking for year and sex among the datas
nonselected<-select(new_data, -c('year', 'sex')) <-asking everything except year and sex among the datas

View(selected)
View(nonselected)

```

