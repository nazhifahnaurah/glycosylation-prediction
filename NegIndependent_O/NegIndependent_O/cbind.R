data_NegIn_O<-read.csv("D:/BioMedik/NegIndependent_O/NegIndependent_O/NegIndependent_O.csv", header = TRUE, sep=";")

data=cbind(data_NegIn_O,AI_neg,CTD2_neg,H1_neg,PAC4_neg)[,-1]
print(data)

write.csv(data, file = "Neg_Independent_O.csv",row.names = TRUE)

call_PosIndependentO<-read.csv("D:/BioMedik/PosIndependent_O/Pos_Independent_O.csv", header = TRUE, sep=",")
call_NegIndependentO<-read.csv("D:/BioMedik/NegIndependent_O/NegIndependent_O/Neg_Independent_O.csv", header = TRUE, sep=",")

Independent_O=rbind(call_PosIndependentO,call_NegIndependentO)
write.csv(Independent_O, file = "Independent_O.csv", row.names = FALSE)

--------------------------------------------------------------------------------------------------------------------------------
  
class = elevation <- matrix(0,340,1)
class = elevation[0:123,1] <- 1
class = elevation[124:340,0] <- 0
class = elevation

class = elevation = data.frame(class)
class = class
dataset_Independent=cbind(Independent_O,class)

write.csv(dataset_Independent, file = "Independent_O.csv",row.names = FALSE)
