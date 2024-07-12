library(caret)
library(e1071)
library(mccr)
install.packages("mcc")
#install.packages("caret")

N_Independent<-read.csv("D:/BioMedik/NegBenchMark_N/NegBenchMark_N/BenchMark_N.csv", header = TRUE,sep=",")[,-1]


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
  accuracy14= confusionMatrix(table(predict=hasilakhir,
                                    actual=data_test$class), positive = '1')
  mcc.tst13 = mccr(hasilakhir, data_test$class)
  
  fileName13='bench_Linear_N.txt'
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
  indeks_data<-createDataPartition(y=N_Independent$class, p=0.4, list=FALSE)
  
  data_train <- N_Independent[indeks_data,]
  data_test <- N_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="polynomial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy15= confusionMatrix(table(predict=hasilakhir,
                                    actual=data_test$class), positive = '1')
  mcc.tst14 = mccr(hasilakhir, data_test$class)
  
  fileName14='bench_polynomialN.txt'
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
  indeks_data<-createDataPartition(y=N_Independent$class, p=0.4, list=FALSE)
  
  data_train <- N_Independent[indeks_data,]
  data_test <- N_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="sigmoid")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy16= confusionMatrix(table(predict=hasilakhir,
                                    actual=data_test$class), positive = '1')
  mcc.tst15 = mccr(hasilakhir, data_test$class)
  
  fileName15='bench_sigmoid_N.txt'
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
  indeks_data<-createDataPartition(y=N_Independent$class, p=0.4, list=FALSE)
  
  data_train <- N_Independent[indeks_data,]
  data_test <- N_Independent[-indeks_data,]
  
  hasil.svm <- svm(class ~., data = data_train,
                   type="C-classification",
                   kernel="radial")
  print(hasil.svm)
  
  hasilakhir <- predict(hasil.svm, data_test)
  head(hasilakhir)
  accuracy17= confusionMatrix(table(predict=hasilakhir,
                                    actual=data_test$class), positive = '1')
  mcc.tst16 = mccr(hasilakhir, data_test$class)
  
  fileName16='bench_gausian_N.txt'
  sink(fileName16, append = T)
  print(paste('=====Iterasi Ke-',x,'====='))
  x=x+1
  print(accuracy17)
  print(paste('MCC = ',mcc.tst16))
  sink()
}

