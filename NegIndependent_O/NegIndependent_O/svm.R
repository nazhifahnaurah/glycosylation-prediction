library(caret)
library(e1071)
library(mccr)

#install.packages("caret")
install.packages("mccr")

O_Independent<-read.csv("D:/BioMedik/NegIndependent_O/NegIndependent_O/Independent_O.csv", header = TRUE,sep=",")

x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=O_Independent$class, p=0.4, list=FALSE, times = 1)
  
  data_train <- O_Independent[indeks_data,]
  data_test <- O_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="linear")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy2=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  mcc_value=mccr(hasilakhir, data_test$class)
  
  fileName='idpn_Linear_N.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy2)
  print(mcc_value)
  sink()
}
  
-----------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=O_Independent$class, p=0.4, list=FALSE)
  
  data_train <- O_Independent[indeks_data,]
  data_test <- O_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="polynomial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy3=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='Idpn_polynomial_O.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy3)
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=O_Independent$class, p=0.4, list=FALSE)
  
  data_train <- O_Independent[indeks_data,]
  data_test <- O_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="sigmoid")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy4=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='Idpn_sigmoid_O.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy4)
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=O_Independent$class, p=0.4, list=FALSE)
  
  data_train <- O_Independent[indeks_data,]
  data_test <- O_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="radial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy5=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='Idpn_gausian_O.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy5)
  sink()
}


