library(mRMRe)
Idpn_O1<-read.csv("D:/BioMedik/NegIndependent_O/NegIndependent_O/Independent_O.csv", header = TRUE, sep=",")
colnames(Idpn_O1)
str(Idpn_O1)
Idpn_O2<-mRMR.data(data=data.frame(Idpn_O1[,3:91, drop=FALSE]))
MRMR_Test<-mRMR.classic("mRMRe.Filter", data=Idpn_O2, target_indices=89,
                        feature_count = 50)
solutions(MRMR_Test)

#mrmr 25
MRMR_Test2<-mRMR.classic("mRMRe.Filter", data=Idpn_O2, target_indices=89,
                         feature_count = 25)
solutions(MRMR_Test2)

#mrmr 75
MRMR_Test3<-mRMR.classic("mRMRe.Filter", data=Idpn_O2, target_indices=89,
                         feature_count = 75)
solutions(MRMR_Test3)
