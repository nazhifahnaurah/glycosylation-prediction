library(caret)
library(e1071)
library(mccr)
install.packages("mcc")
#install.packages("caret")

call_datamrmr75<-read.csv("D:/Independent N/datamrmr75.csv", header = TRUE, sep=",")[,-1]

x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=call_datamrmr75$class, p=0.4, list=FALSE)
  
  data_train <- call_datamrmr75[indeks_data,]
  data_test <- call_datamrmr75[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="linear")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy10= confusionMatrix(table(predict=hasilakhir,
                                    actual=data_test$class), positive = '1')
  mcc.tst9 = mccr(hasilakhir, data_test$class)
  
  fileName9='idpn_Linear_N_mrmr75.txt'
  sink(fileName9, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy10)
  print(paste('MCC = ',mcc.tst9))
  sink()
}

-----------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=call_datamrmr75$class, p=0.4, list=FALSE)
  
  data_train <- call_datamrmr75[indeks_data,]
  data_test <- call_datamrmr75[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="polynomial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy11= confusionMatrix(table(predict=hasilakhir,
                                    actual=data_test$class), positive = '1')
  mcc.tst10 = mccr(hasilakhir, data_test$class)
  
  fileName10='idpn_polynomial_N_mrmr75.txt'
  sink(fileName10, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy11)
  print(paste('MCC = ',mcc.tst10))
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=call_datamrmr75$class, p=0.4, list=FALSE)
  
  data_train <- call_datamrmr75[indeks_data,]
  data_test <- call_datamrmr75[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="sigmoid")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy12= confusionMatrix(table(predict=hasilakhir,
                                    actual=data_test$class), positive = '1')
  mcc.tst11 = mccr(hasilakhir, data_test$class)
  
  fileName11='idpn_sigmoid_N_mrmr75.txt'
  sink(fileName11, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy12)
  print(paste('MCC = ',mcc.tst11))
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=call_datamrmr75$class, p=0.4, list=FALSE)
  
  data_train <- call_datamrmr75[indeks_data,]
  data_test <- call_datamrmr75[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="radial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy13= confusionMatrix(table(predict=hasilakhir,
                                    actual=data_test$class), positive = '1')
  mcc.tst12 = mccr(hasilakhir, data_test$class)
  
  fileName12='idpn_gausian_N_mrmr75.txt'
  sink(fileName12, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy13)
  print(paste('MCC = ',mcc.tst12))
  sink()
}

