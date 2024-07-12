library(mRMRe)
Bench_C1<-read.csv("D:/BioMedik/NegBenchMark_C/BenchMark_C.csv", header = TRUE, sep=",")
colnames(Bench_C1)
str(Bench_C1)
Bench_C2<-mRMR.data(data=data.frame(Bench_C1[,3:92, drop=FALSE]))
MRMR_Test<-mRMR.classic("mRMRe.Filter", data=Bench_C2, target_indices=90,
                        feature_count = 50)
solutions(MRMR_Test)

#mrmr 25
MRMR_Test2<-mRMR.classic("mRMRe.Filter", data=Bench_C2, target_indices=90,
                         feature_count = 25)
solutions(MRMR_Test2)

#mrmr 75
MRMR_Test3<-mRMR.classic("mRMRe.Filter", data=Bench_C2, target_indices=90,
                         feature_count = 75)
solutions(MRMR_Test3)
