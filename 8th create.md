# createreadmefile
####### Ch.9 Plotting Analysis Results #########
data('esoph')

summary(esoph)


## Correlation Analysis ##
plot(esoph$ncontrols, esoph$ncases, 
     xlab = "Number of Controls", ylab = "Number of Cases",
     col= 'blue')


install.packages("ggpubr")
library("ggpubr")
ggscatter(esoph, x = "ncontrols", y = "ncases", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Number of Controls", ylab = "Number of Cases")


## Correlation between Multiple Variables ##
library(corrplot)
library(RColorBrewer)

data <- read.csv("C:\\Users\\everu\\Downloads\\welfare-small.csv", header=TRUE)

summary(data)

corrs <-cor(data)
corrplot(corrs, type="upper", order="hclust",
         col=brewer.pal(n=8, name="RdYlBu"))



## Simple Linear Regression Plot ##
res<-lm(ncases~ncontrols, data = esoph)
summary(res)

plot(esoph$ncontrols, esoph$ncases)
abline(res, col = 'red')
abline(res, col="blue")


library(ggplot2)
ggplot(esoph, aes(ncontrols, ncases)) + 
  geom_point() + 
  geom_smooth(method = MASS::rlm)


## Multiple Linear Regression Plot ##
res<-lm(ncases~ncontrols+agegp+alcgp, data = esoph)
summary(res)

install.packages('car')
library(car)
avPlots(res)



