data_PosIn_O<-read.csv("D:/BioMedik/PosIndependent_O/PosIndependent_O.csv", header = TRUE, sep=";")

data_pos=cbind(data_PosIn_O,AI_pos,CTD2_pos,H1_pos,PAC4_pos)[,-1]
print(data_pos)

write.csv(data_pos, file = "Pos_Independent_O.csv",row.names = TRUE)

