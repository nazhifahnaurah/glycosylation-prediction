data_PosIndependent_N<-read.csv("D:/BioMedik/PosIndependent_N/PosIndependent_N.csv", header = TRUE, sep=";")

data_pos=cbind(data_PosIndependent_N,AI_pos,CTD2_pos,H1_pos,PAC4_pos)[,-1]
print(data_pos)

write.csv(data_pos, file = "Pos_PosIndependent_N.csv",row.names = TRUE)
