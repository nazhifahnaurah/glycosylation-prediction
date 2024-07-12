library(mRMRe)
Benchmark_O<-read.csv("D:/BioMedik/NegBenchMark_O/NegBenchMark_O/BenchMark_O.csv", header = TRUE, sep=",")
#BenchMark_C<-as.numeric(BenchMark_C)
str(Benchmark_O)
colnames(Benchmark_O)
Benchmark_O<-mRMR.data(data=data.frame(Benchmark_O[,3:92, drop=FALSE]))
MRMR_Test<-mRMR.classic("mRMRe.Filter", data=Benchmark_O, target_indices=90,
                        feature_count = 50)
solutions(MRMR_Test)
