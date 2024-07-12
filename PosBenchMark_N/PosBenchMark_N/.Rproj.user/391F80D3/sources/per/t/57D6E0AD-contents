data_PosBenchMark_N<-read.csv("D:/BioMedik/PosBenchMark_N/PosBenchMark_N/PosBenchMark_N.csv", header = TRUE, sep=";")

data_pos=cbind(data_PosBenchMark_N,AI_pos,CTD2_pos,H1_pos,PAC4_pos)[,-1]
print(data_pos)

write.csv(data_pos, file = "Pos_BenchMark_N.csv",row.names = TRUE)
