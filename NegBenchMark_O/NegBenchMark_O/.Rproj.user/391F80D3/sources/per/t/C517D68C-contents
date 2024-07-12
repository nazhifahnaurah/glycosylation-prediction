library(caret)
library(e1071)
#install.packages("caret")

Tanpa_BenchMark_O<-read.csv("D:/BioMedik/NegBenchMark_O/NegBenchMark_O/BenchMark_O.csv", header = TRUE,sep=",")[,-1]

x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=Tanpa_BenchMark_O$class, p=0.4, list=FALSE)
  
  data_train <- Tanpa_BenchMark_O[indeks_data,]
  data_test <- Tanpa_BenchMark_O[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="linear")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyO_2=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_Linear_O_tanpamrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyO_2)
  sink()
}

-----------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=Tanpa_BenchMark_O$class, p=0.4, list=FALSE)
  
  data_train <- Tanpa_BenchMark_O[indeks_data,]
  data_test <- Tanpa_BenchMark_O[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="polynomial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyO_3=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_polynomial_O_tanpamrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyO_3)
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=Tanpa_BenchMark_O$class, p=0.4, list=FALSE)
  
  data_train <- Tanpa_BenchMark_O[indeks_data,]
  data_test <- Tanpa_BenchMark_O[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="sigmoid")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyO_4=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_sigmoid_O_tanpamrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyO_4)
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=Tanpa_BenchMark_O$class, p=0.4, list=FALSE)
  
  data_train <- Tanpa_BenchMark_O[indeks_data,]
  data_test <- Tanpa_BenchMark_O[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="radial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyO_5=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='benchmark_gausiaO_O_tanpamrmr.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyO_5)
  sink()
}






