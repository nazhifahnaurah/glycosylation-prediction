library(mRMRe)
Bench_N1<-read.csv("D:/BioMedik/NegBenchMark_N/NegBenchMark_N/BenchMark_N.csv", header = TRUE, sep=",")
colnames(Bench_N1)
str(Bench_N1)
Bench_N2<-mRMR.data(data=data.frame(Bench_N1[,3:92, drop=FALSE]))
MRMR_Test<-mRMR.classic("mRMRe.Filter", data=Bench_N2, target_indices=90,
                        feature_count = 50)
solutions(MRMR_Test)

#mrmr 25
MRMR_Test2<-mRMR.classic("mRMRe.Filter", data=Bench_N2, target_indices=90,
                         feature_count = 25)
solutions(MRMR_Test2)

#mrmr 75
MRMR_Test3<-mRMR.classic("mRMRe.Filter", data=Bench_N2, target_indices=90,
                         feature_count = 75)
solutions(MRMR_Test3)
