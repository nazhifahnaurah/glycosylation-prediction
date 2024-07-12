library(mRMRe)
Idpn_C1<-read.csv("D:/BioMedik/glikosilasi/Independent_C.csv", header = TRUE, sep=",")
#BenchMark_N1<-as.numeric(BenchMark_N1)
colnames(Idpn_C1)
str(Idpn_C1)
Idpn_C2<-mRMR.data(data=data.frame(Idpn_C1[,3:92, drop=FALSE]))
MRMR_Test<-mRMR.classic("mRMRe.Filter", data=Idpn_C2, target_indices=90,
                        feature_count = 50)
solutions(MRMR_Test)
