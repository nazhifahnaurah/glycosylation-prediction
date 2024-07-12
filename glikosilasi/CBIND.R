data_NegIn_C<-read.csv("D:/BioMedik/glikosilasi/cnegatif_independent.csv", header = TRUE, sep=";")

data=cbind(data_NegIn_C,AI_neg,CTD2_neg,H1_neg,PAC4_neg)[,-1]
print(data)

write.csv(data, file = "Neg_Independent_C.csv",row.names = TRUE)

call_PosIndependentC<-read.csv("D:/BioMedik/PosIndependent_C/Pos_Independent_C.csv", header = TRUE, sep=",")
call_NegIndependentC<-read.csv("D:/BioMedik/glikosilasi/Neg_Independent_C.csv", header = TRUE, sep=",")

Independent_C=rbind(call_PosIndependentC,call_NegIndependentC)

--------------------------------------------------------------------------------------------------------------------------------
  
class = elevation <- matrix(0,40,1)
class = elevation[0:13,1] <- 1
class = elevation[14:40,0] <- 0
class = elevation

class = elevation = data.frame(class)
class = class
dataset_Independent=cbind(Independent_C,class)

write.csv(dataset_Independent, file = "Independent_C.csv",row.names = TRUE)
