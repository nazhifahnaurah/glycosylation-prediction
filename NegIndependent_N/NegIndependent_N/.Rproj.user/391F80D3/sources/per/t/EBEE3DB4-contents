library(caret)
library(e1071)
#install.packages("caret")

N_Independent<-read.csv("D:/BioMedik/NegIndependent_N/NegIndependent_N/Independent_N.csv", header = TRUE,sep=",")[,-1]

x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=N_Independent$class, p=0.4, list=FALSE)
  
  data_train <- N_Independent[indeks_data,]
  data_test <- N_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="linear")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy2=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='idpN_Linear_N.txt'
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
  indeks_data<-createDataPartition(y=N_Independent$class, p=0.4, list=FALSE)
  
  data_train <- N_Independent[indeks_data,]
  data_test <- N_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="polynomial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyN3=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='Idpn_polynomial_N.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyN3)
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=N_Independent$class, p=0.4, list=FALSE)
  
  data_train <- N_Independent[indeks_data,]
  data_test <- N_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="sigmoid")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyN4=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='Idpn_sigmoid_N.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyN4)
  sink()
}

-------------------------------------------------------------------------------------------
  
  x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=N_Independent$class, p=0.4, list=FALSE)
  
  data_train <- N_Independent[indeks_data,]
  data_test <- N_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="radial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyN5=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='Idpn_gausian_N.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyN5)
  sink()
}
