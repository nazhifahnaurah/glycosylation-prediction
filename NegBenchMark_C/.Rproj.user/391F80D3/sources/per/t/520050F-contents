library(caret)
library(e1071)
#install.packages("caret")

call_datamrmr<-read.csv("D:/BioMedik/NegBenchMark_C/datamrmr.csv", header = TRUE,sep=",")[,-1]

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
  accuracyC2=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_Linear_C.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyC2)
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
  accuracyC3=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_polynomial_C.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyC3)
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
  accuracyC4=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_sigmoid_C.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyC4)
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
  accuracyC5=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_gausian_C.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyC5)
  sink()
}






