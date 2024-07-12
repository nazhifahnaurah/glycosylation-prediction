library(caret)
library(e1071)
library(mccr)
install.packages("mcc")
#install.packages("caret")

O_Independent<-read.csv("D:/BioMedik/NegIndependent_O/NegIndependent_O/Independent_O.csv", header = TRUE,sep=",")[,-1]

x=1
k_fold=5
for (i in 1:5) {
  indeks_data<-createDataPartition(y=O_Independent$class, p=0.4, list=FALSE)
  
  data_train <- O_Independent[indeks_data,]
  data_test <- O_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="linear")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy14= confusionMatrix(table(predict=hasilakhir,
                                    actual=data_test$class), positive = '1')
  mcc.tst13 = mccr(hasilakhir, data_test$class)
  
  fileName13='idpO_Linear_O.txt'
  sink(fileName13, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy14)
  print(paste('MCC = ',mcc.tst13))
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
  accuracy15= confusionMatrix(table(predict=hasilakhir,
                                    actual=data_test$class), positive = '1')
  mcc.tst14 = mccr(hasilakhir, data_test$class)
  
  fileName14='idpO_polynomial_O.txt'
  sink(fileName14, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy15)
  print(paste('MCC = ',mcc.tst14))
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
  accuracy16= confusionMatrix(table(predict=hasilakhir,
                                    actual=data_test$class), positive = '1')
  mcc.tst15 = mccr(hasilakhir, data_test$class)
  
  fileName15='idpO_sigmoid_O.txt'
  sink(fileName15, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy16)
  print(paste('MCC = ',mcc.tst15))
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
  accuracy17= confusionMatrix(table(predict=hasilakhir,
                                    actual=data_test$class), positive = '1')
  mcc.tst16 = mccr(hasilakhir, data_test$class)
  
  fileName16='idpO_gausiaO_O.txt'
  sink(fileName16, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy17)
  print(paste('MCC = ',mcc.tst16))
  sink()
}

