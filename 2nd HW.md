# createreadmefile 
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


