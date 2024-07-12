library(caret)
library(e1071)
library(mccr)
install.packages("mcc")
#install.packages("caret")

call_datamrmr<-read.csv("D:/independent O/datamrmr50.csv", header = TRUE, sep=",")[,-1]

x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=call_datamrmr$class, p=0.4, list=FALSE)
  
  data_train <- call_datamrmr[indeks_data,]
  data_test <- call_datamrmr[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="linear")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy2= confusionMatrix(table(predict=hasilakhir,
                                   actual=data_test$class), positive = '1')
  mcc.tst1 = mccr(hasilakhir, data_test$class)
  
  fileName1='idpn_Linear_O_mrmr50.txt'
  sink(fileName1, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy2)
  print(paste('MCC = ',mcc.tst1))
  sink()
}

-----------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=call_datamrmr$class, p=0.4, list=FALSE)
  
  data_train <- call_datamrmr[indeks_data,]
  data_test <- call_datamrmr[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="polynomial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy3= confusionMatrix(table(predict=hasilakhir,
                                   actual=data_test$class), positive = '1')
  mcc.tst2 = mccr(hasilakhir, data_test$class)
  
  fileName2='idpn_polynomial_O_mrmr50.txt'
  sink(fileName2, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy3)
  print(paste('MCC = ',mcc.tst2))
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=call_datamrmr$class, p=0.4, list=FALSE)
  
  data_train <- call_datamrmr[indeks_data,]
  data_test <- call_datamrmr[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="sigmoid")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy4= confusionMatrix(table(predict=hasilakhir,
                                   actual=data_test$class), positive = '1')
  mcc.tst3 = mccr(hasilakhir, data_test$class)
  
  fileName3='idpn_sigmoid_O_mrmr50.txt'
  sink(fileName3, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy4)
  print(paste('MCC = ',mcc.tst3))
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=call_datamrmr$class, p=0.4, list=FALSE)
  
  data_train <- call_datamrmr[indeks_data,]
  data_test <- call_datamrmr[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="radial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy5= confusionMatrix(table(predict=hasilakhir,
                                   actual=data_test$class), positive = '1')
  mcc.tst4 = mccr(hasilakhir, data_test$class)
  
  fileName4='idpn_gausian_O_mrmr50.txt'
  sink(fileName4, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy5)
  print(paste('MCC = ',mcc.tst4))
  sink()
}

