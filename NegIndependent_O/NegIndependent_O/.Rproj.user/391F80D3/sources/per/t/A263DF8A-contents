library(caret)
library(e1071)
#install.packages("caret")

call_datamrmr<-read.csv("D:/BioMedik/NegIndependent_O/NegIndependent_O/datamrmr.csv", header = TRUE, sep=",")[,-1]

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
  accuracy2=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='idpn_Linear_O_mrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy2)
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
  accuracyO3=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='idpn_polynomial_O_mrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyO3)
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
  accuracyO4=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='idpn_sigmoid_O_mrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyO4)
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
  accuracyO5=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='idpn_gausian_O_mrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyO5)
  sink()
}

