data_NegBenchMark_C<-read.csv("D:/BioMedik/NegBenchMark_C/NegBenchMark_C.csv", header = TRUE, sep=";")

data_neg=cbind(data_NegBenchMark_C,AI_neg,CTD2_neg,H1_neg,PAC4_neg)[,-1]
print(data_neg)

write.csv(data_neg, file = "Neg_BenchMark_C.csv",row.names = TRUE)

call_PosBenchMarkC<-read.csv("D:/BioMedik/PosBenchMark_C/PosBenchMark_C/Pos_BenchMark_C.csv", header = TRUE, sep=",")
call_NegBenchMarkC<-read.csv("D:/BioMedik/NegBenchMark_C/Neg_BenchMark_C.csv", header = TRUE, sep=",")
all<-read.csv("D:/skripsi/BioMedik/NegBenchMark_C/BenchMark_C.csv", header = TRUE, sep=",")

BenchMark_C=rbind(call_PosBenchMarkC,call_NegBenchMarkC)

-----------------------------------------------------------------------------------------------------------------------

class = elevation <- matrix(0,143,1)
class = elevation[0:55,1] <- 1
class = elevation[56:143,0] <- 0
class = elevation

class = elevation = data.frame(class)
class = class
dataset_BenchMark=cbind(BenchMark_C,class)

write.csv(dataset_BenchMark, file = "BenchMark_C.csv",row.names = TRUE)
