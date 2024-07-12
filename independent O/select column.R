Idpn_O3 <- read.csv("D:/BioMedik/NegIndependent_O/NegIndependent_O/Independent_O.csv", header = TRUE, sep=",")[,-1:-2]
colnames(Idpn_O2)
datamrmr.se <- dplyr::select(Idpn_O3,14,66,76,81,29,88,67,59,22,42,57,27,28,18,7,26,52,20,74,61,70,82,72,23,86,84,60,51,65,75,53,19,73,47,79,1,69,21,39,80,83,71,85,11,63,54,24,78,
                             87,58,56,25,62,68,33,38,17,55,16,13,15,4,64,48,34,77,44,43,36,37,9,49,35,46,2,class)
write.csv(datamrmr.se, file = "datamrmr75.csv",row.names = TRUE)
