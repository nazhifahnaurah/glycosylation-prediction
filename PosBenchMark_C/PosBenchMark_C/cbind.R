data_PosBenchMark_C<-read.csv("D:/BioMedik/PosBenchMark_C/PosBenchMark_C/PosBenchMark_C.csv", header = TRUE, sep=";")
data_pos=cbind(data_PosBenchMark_C,AI_pos,CTD2_pos,H1_pos,PAC4_pos)[,-1]
print(data_pos)

write.csv(data_pos, file = "Pos_BenchMark_C.csv",row.names = TRUE)
