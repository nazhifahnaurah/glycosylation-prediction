data_NegIn_N<-read.csv("D:/BioMedik/NegIndependent_N/NegIndependent_N/NegIndependent_N.csv", header = TRUE, sep=";")

data=cbind(data_NegIn_N,AI_neg,CTD2_neg,H1_neg,PAC4_neg)[,-1]
print(data)

write.csv(data, file = "Neg_Independent_N.csv",row.names = TRUE)

call_PosIndependentN<-read.csv("D:/BioMedik/PosIndependent_N/Pos_PosIndependent_N.csv", header = TRUE, sep=",")
call_NegIndependentN<-read.csv("D:/BioMedik/NegIndependent_N/NegIndependent_N/Neg_Independent_N.csv", header = TRUE, sep=",")

Independent_N=rbind(call_PosIndependentN,call_NegIndependentN)

--------------------------------------------------------------------------------------------------------------------------------
  
class = elevation <- matrix(0,224,1)
class = elevation[0:82,1] <- 1
class = elevation[83:224,0] <- 0
class = elevation

class = elevation = data.frame(class)
class = class
dataset_Independent=cbind(Independent_N,class)

write.csv(dataset_Independent, file = "Independent_N.csv",row.names = TRUE)
