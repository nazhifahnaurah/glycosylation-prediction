library(caret)
library(e1071)
library(mccr)
install.packages("mcc")
#install.packages("caret")

call_datamrmr25<-read.csv("D:/Independent C/datamrmr25.csv", header = TRUE, sep=",")[,-1]

x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=call_datamrmr25$class, p=0.4, list=FALSE)
  
  data_train <- call_datamrmr25[indeks_data,]
  data_test <- call_datamrmr25[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="linear")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy6= confusionMatrix(table(predict=hasilakhir,
                                   actual=data_test$class), positive = '1')
  mcc.tst5 = mccr(hasilakhir, data_test$class)
  
  fileName5='idpn_Linear_C_mrmr25.txt'
  sink(fileName5, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy6)
  print(paste('MCC = ',mcc.tst5))
  sink()
}

-----------------------------------------------------------------------------------------
  
x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=call_datamrmr25$class, p=0.4, list=FALSE)
  
  data_train <- call_datamrmr25[indeks_data,]
  data_test <- call_datamrmr25[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="polynomial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy7= confusionMatrix(table(predict=hasilakhir,
                                   actual=data_test$class), positive = '1')
  mcc.tst6 = mccr(hasilakhir, data_test$class)
  
  fileName6='idpn_polynomialC_mrmr25.txt'
  sink(fileName6, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy7)
  print(paste('MCC = ',mcc.tst6))
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=call_datamrmr25$class, p=0.4, list=FALSE)
  
  data_train <- call_datamrmr25[indeks_data,]
  data_test <- call_datamrmr25[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="sigmoid")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy8= confusionMatrix(table(predict=hasilakhir,
                                   actual=data_test$class), positive = '1')
  mcc.tst7 = mccr(hasilakhir, data_test$class)
  
  fileName7='idpn_sigmoid_C_mrmr25.txt'
  sink(fileName7, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy8)
  print(paste('MCC = ',mcc.tst7))
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=call_datamrmr25$class, p=0.4, list=FALSE)
  
  data_train <- call_datamrmr25[indeks_data,]
  data_test <- call_datamrmr25[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="radial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy9= confusionMatrix(table(predict=hasilakhir,
                                   actual=data_test$class), positive = '1')
  mcc.tst8 = mccr(hasilakhir, data_test$class)
  
  fileName8='idpn_gausian_C_mrmr25.txt'
  sink(fileName8, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy9)
  print(paste('MCC = ',mcc.tst8))
  sink()
}

