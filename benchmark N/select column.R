BenchMark_N2 <- read.csv("D:/BioMedik/NegBenchMark_N/NegBenchMark_N/BenchMark_N.csv", header = TRUE, sep=",")[,-1:-2]
colnames(BenchMark_N2)
datamrmr.se <- dplyr::select(BenchMark_N2,88,89,87,67,14,6,28,26,30,20,71,22,1,24,47,29,27,25,69,21,53,19,85,59,52,73,18,68,72,75,77,45,79,81,82,78,38,80,10,86,70,40,66,84,76,65,58,54,64,
                             55,62,17,56,16,57,61,63,74,44,60,83,8,12,4,49,34,23,35,39,15,42,36,37,2,50,class)
write.csv(datamrmr.se, file = "datamrmr75.csv",row.names = TRUE)
