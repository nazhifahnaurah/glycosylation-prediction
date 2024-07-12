data_NegBenchMark_N<-read.csv("D:/BioMedik/NegBenchMark_N/NegBenchMark_N/NegBenchMark_N.csv", header = TRUE, sep=";")

data_neg=cbind(data_NegBenchMark_N,AI_neg,CTD2_neg,H1_neg,PAC4_neg)[,-1]
print(data_neg)

write.csv(data_neg, file = "Neg_BenchMark_N.csv",row.names = TRUE)

call_PosBenchMarkN<-read.csv("D:/BioMedik/PosBenchMark_N/PosBenchMark_N/Pos_BenchMark_N.csv", header = TRUE, sep=",")
call_NegBenchMarkN<-read.csv("D:/BioMedik/NegBenchMark_N/NegBenchMark_N/Neg_BenchMark_N.csv", header = TRUE, sep=",")

BenchMark_N=rbind(call_PosBenchMarkN,call_NegBenchMarkN)

----------------------------------------------------------------------------------------------------------------------------------

class = elevation <- matrix(0,892,1)
class = elevation[0:333,1] <- 1
class = elevation[334:892,0] <- 0
class = elevation

class = elevation = data.frame(class)
class = class
dataset_BenchMark=cbind(BenchMark_N,class)

write.csv(dataset_BenchMark, file = "BenchMark_N.csv",row.names = TRUE)