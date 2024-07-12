library(caret)
library(e1071)
#install.packages("caret")

Tanpa_BenchMark_C<-read.csv("D:/BioMedik/NegBenchMark_C/BenchMark_C.csv", header = TRUE,sep=",")[,-1]

x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=Tanpa_BenchMark_C$class, p=0.4, list=FALSE)
  
  data_train <- Tanpa_BenchMark_C[indeks_data,]
  data_test <- Tanpa_BenchMark_C[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="linear")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyC_2=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_Linear_C_tanpamrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyC_2)
  sink()
}

-----------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=Tanpa_BenchMark_C$class, p=0.4, list=FALSE)
  
  data_train <- Tanpa_BenchMark_C[indeks_data,]
  data_test <- Tanpa_BenchMark_C[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="polynomial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyC_3=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_polynomial_C_tanpamrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyC_3)
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=Tanpa_BenchMark_C$class, p=0.4, list=FALSE)
  
  data_train <- Tanpa_BenchMark_C[indeks_data,]
  data_test <- Tanpa_BenchMark_C[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="sigmoid")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyC_4=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_sigmoid_C_tanpamrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyC_4)
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=Tanpa_BenchMark_C$class, p=0.4, list=FALSE)
  
  data_train <- Tanpa_BenchMark_C[indeks_data,]
  data_test <- Tanpa_BenchMark_C[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="radial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyC_5=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_gausian_C_tanpamrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyC_5)
  sink()
}






