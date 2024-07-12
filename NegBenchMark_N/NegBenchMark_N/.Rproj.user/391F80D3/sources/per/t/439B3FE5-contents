library(mRMRe)
BenchMark_N1<-read.csv("D:/BioMedik/NegBenchMark_N/NegBenchMark_N/BenchMark_N.csv", header = TRUE, sep=",")
#BenchMark_N1<-as.numeric(BenchMark_N1)
str(BenchMark_N1)
BenchMark_N1<-mRMR.data(data=data.frame(BenchMark_N1[,3:92, drop=FALSE]))
MRMR_Test<-mRMR.classic("mRMRe.Filter", data=BenchMark_N1, target_indices=90,
                        feature_count = 50)
solutions(MRMR_Test)
