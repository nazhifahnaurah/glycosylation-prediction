library(mRMRe)
Bench_O1<-read.csv("D:/BioMedik/NegBenchMark_O/NegBenchMark_O/BenchMark_O.csv", header = TRUE, sep=",")
colnames(Bench_O1)
str(Bench_O1)
Bench_O2<-mRMR.data(data=data.frame(Bench_O1[,3:92, drop=FALSE]))
MRMR_Test<-mRMR.classic("mRMRe.Filter", data=Bench_O2, target_indices=90,
                        feature_count = 50)
solutions(MRMR_Test)

#mrmr 25
MRMR_Test2<-mRMR.classic("mRMRe.Filter", data=Bench_O2, target_indices=90,
                         feature_count = 25)
solutions(MRMR_Test2)

#mrmr 75
MRMR_Test3<-mRMR.classic("mRMRe.Filter", data=Bench_O2, target_indices=90,
                         feature_count = 75)
solutions(MRMR_Test3)
