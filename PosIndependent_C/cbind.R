data_PosIn_C<-read.csv("D:/BioMedik/PosIndependent_C/PosIndependent_C.csv", header = TRUE, sep=";")

data_pos=cbind(data_PosIn_C,AI_pos,CTD2_pos,H1_pos,PAC4_pos)[,-1]
print(data_pos)

write.csv(data_pos, file = "Pos_Independent_C.csv",row.names = TRUE)
