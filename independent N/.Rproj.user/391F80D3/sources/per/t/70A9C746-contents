#
library(mRMRe)
Idpn_N1<-read.csv("D:/BioMedik/NegIndependent_N/NegIndependent_N/Independent_N.csv", header = TRUE, sep=",")
colnames(Idpn_N1)
str(Idpn_N1)
Idpn_N2<-mRMR.data(data=data.frame(Idpn_N1[,3:92, drop=FALSE]))
MRMR_Test<-mRMR.classic("mRMRe.Filter", data=Idpn_N2, target_indices=90,
                        feature_count = 50)
solutions(MRMR_Test)

#mrmr 25
MRMR_Test2<-mRMR.classic("mRMRe.Filter", data=Idpn_N2, target_indices=90,
                         feature_count = 25)
solutions(MRMR_Test2)

#mrmr 75
MRMR_Test3<-mRMR.classic("mRMRe.Filter", data=Idpn_N2, target_indices=90,
                         feature_count = 75)
solutions(MRMR_Test3)
