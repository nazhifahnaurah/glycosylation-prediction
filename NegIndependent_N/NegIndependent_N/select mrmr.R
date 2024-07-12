Idpn_N2 <- read.csv("D:/BioMedik/NegIndependent_N/NegIndependent_N/Independent_N.csv", header = TRUE, sep=",")[,-1:-2]
colnames(Idpn_N2)
datamrmr.se <- dplyr::select(Idpn_N2,87,84,60,80,71,88,85,28,82,56,16,6,55,81,77,23,65,76,34,54,53,25,62,73,58,45,66,89,2,15,70,42,79,57,67,9,69,75,49,27,78,86,72,24,39,26,52,22,4,12,class)
write.csv(datamrmr.se, file = "datamrmr.csv",row.names = TRUE)
