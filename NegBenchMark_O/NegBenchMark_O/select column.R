Benchmark_O2<-read.csv("D:/BioMedik/NegBenchMark_O/NegBenchMark_O/BenchMark_O.csv", header = TRUE, sep=",")[,-1:-2]
colnames(Benchmark_O2)
datamrmr.se <- dplyr::select(Benchmark_O2,4,49,82,76,88,53,87,73,52,57,64,71,85,66,26,86,59,56,89,63,60,18,25,55,58,77,79,81,29,40,84,80,68,72,37,70,15,74,69,17,16,83,61,44,28,62,24,23,54,19,class)
write.csv(datamrmr.se, file = "datamrmr.csv",row.names = TRUE)
