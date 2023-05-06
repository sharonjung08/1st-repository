
###### Ch. 6 ######
data('esoph') #Smoking, Alcohol and (O)esophageal Cancer

summary(esoph)

#Linear Regression between "Number of Cases"-->"Number of Controls"
reg<-lm(ncases~ncontrols, data = esoph)
summary(reg)


#Pearson Correlation between "Number of Cases" vs "Number of Controls"
correlation<-cor.test(esoph$ncases, esoph$ncontrols, method = "pearson")
correlation


# t-test vs linear regression
data <- read.csv("C:\\Users\\socra\\Downloads\\respiratory.csv", header=TRUE)

summary(data)

t.test(outcome~treat, data)

reg<-lm(outcome~treat, data = data)
summary(reg)


