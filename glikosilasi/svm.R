library(caret)
library(e1071)
#install.packages("caret")

C_Independent<-read.csv("D:/BioMedik/glikosilasi/Independent_C.csv", header = TRUE,sep=",")[,-1]

x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=C_Independent$class, p=0.4, list=FALSE)
  
  data_train <- C_Independent[indeks_data,]
  data_test <- C_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="linear")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy2=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='idpN_Linear_C.txt'
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
  indeks_data<-createDataPartition(y=C_Independent$class, p=0.4, list=FALSE)
  
  data_train <- C_Independent[indeks_data,]
  data_test <- C_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="polynomial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyC3=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='Idpn_polynomial_C.txt'
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
  indeks_data<-createDataPartition(y=C_Independent$class, p=0.4, list=FALSE)
  
  data_train <- C_Independent[indeks_data,]
  data_test <- C_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="sigmoid")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyC4=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='Idpn_sigmoid_C.txt'
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
  indeks_data<-createDataPartition(y=C_Independent$class, p=0.4, list=FALSE)
  
  data_train <- C_Independent[indeks_data,]
  data_test <- C_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="radial")
  print(hasil.svm)
    
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracyC5=confusionMatrix(table(predict = hasilakhir, Actual = data_test$class))
  
  fileName='Idpn_gausian_C.txt'
  sink(fileName, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracyC5)
  sink()
}
