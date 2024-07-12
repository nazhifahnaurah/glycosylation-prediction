data_NegBenchMark_O<-read.csv("D:/BioMedik/NegBenchMark_O/NegBenchMark_O/NegBenchMark_O.csv", header = TRUE, sep=";")

data=cbind(data_NegBenchMark_O,AI_neg,CTD2_neg,H1_neg,PAC4_neg)[,-1]
print(data)

write.csv(data, file = "Neg_BenchMark_O.csv",row.names = TRUE)

call_PosBenchmarkO<-read.csv("D:/BioMedik/PosBenchMark_O/Pos_BenchMark_O.csv", header = TRUE, sep=",")
call_NegBenchmarkO<-read.csv("D:/BioMedik/NegBenchMark_O/NegBenchMark_O/Neg_BenchMark_O.csv", header = TRUE, sep=",")

Benchmark_O=rbind(call_PosBenchmarkO,call_NegBenchmarkO)

---------------------------------------------------------------------------------------------------
  
class = elevation <- matrix(0,1401,1)
class = elevation[0:505,1] <- 1
class = elevation[506:1401,0] <- 0
class = elevation

class = elevation = data.frame(class)
class = class
dataset_benchmark=cbind(Benchmark_O, class)

write.csv(dataset_benchmark, file = "Benchmark_O.csv",row.names = TRUE)
