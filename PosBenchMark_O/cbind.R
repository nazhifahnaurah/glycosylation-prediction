data_PosBenchMark_O<-read.csv("D:/BioMedik/PosBenchMark_O/PosBenchMark_O.csv", header = TRUE, sep=";")

data_pos=cbind(data_PosBenchMark_O,AI_pos,CTD2_pos,H1_pos,PAC4_pos)[,-1]
print(data_pos)

write.csv(data_pos, file = "Pos_BenchMark_O.csv",row.names = TRUE)
