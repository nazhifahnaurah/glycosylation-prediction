library(caret)
library(e1071)
#install.packages("caret")

Tanpa_BenchMark_N<-read.csv("D:/BioMedik/NegBenchMark_N/NegBenchMark_N/BenchMark_N.csv", header = TRUE,sep=",")[,-1]

x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=Tanpa_BenchMark_N$class, p=0.4, list=FALSE)
  
  data_train <- Tanpa_BenchMark_N[indeks_data,]
  data_test <- Tanpa_BenchMark_N[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="linear")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyN_2=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_Linear_N_tanpamrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyN_2)
  sink()
}

-----------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=Tanpa_BenchMark_N$class, p=0.4, list=FALSE)
  
  data_train <- Tanpa_BenchMark_N[indeks_data,]
  data_test <- Tanpa_BenchMark_N[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="polynomial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyN_3=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_polynomial_N_tanpamrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyN_3)
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=Tanpa_BenchMark_N$class, p=0.4, list=FALSE)
  
  data_train <- Tanpa_BenchMark_N[indeks_data,]
  data_test <- Tanpa_BenchMark_N[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="sigmoid")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyN_4=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_sigmoid_N_tanpamrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyN_4)
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=Tanpa_BenchMark_N$class, p=0.4, list=FALSE)
  
  data_train <- Tanpa_BenchMark_N[indeks_data,]
  data_test <- Tanpa_BenchMark_N[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="radial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyN_5=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_gausian_N_tanpamrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyN_5)
  sink()
}






