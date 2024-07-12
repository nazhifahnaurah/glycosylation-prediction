BenchMark_C2<-read.csv("D:/BioMedik/NegBenchMark_C/BenchMark_C.csv", header = TRUE, sep=",")[,-1:-2]
#Data_BenchMark_C2 <- subset( BenchMark_C2, select = -c(1, 32 ) )
colnames(BenchMark_C2)
datamrmr.se <- dplyr::select(BenchMark_C2,76,81,80,8,89,73,33,87,5,22,10,57,26,62,31,66,88,63,14,86,79,55,29,85,42,64,83,9,21,68,16,72,56,45,60,61,40,3,53,36,38,70,59,7,25,75,65,58,11,71,
                             50,30,18,19,20,84,24,78,15,47,52,28,69,23,27,4,77,17,54,1,44,67,74,12,37,class)
write.csv(datamrmr.se, file = "datamrmr75.csv",row.names = TRUE)
