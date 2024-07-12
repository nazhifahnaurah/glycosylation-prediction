library(protr)
NegIndependent_C<-read.csv("C:/Users/Lenovo/Documents/glikosilasi/Datasets Glycomine/NegIndependent_C.txt", header = FALSE, sep="\t")


jumlah_seq=1
seq_iter=array()

sink('id_NegIndependentCnew.fasta')
for(j in 1:nrow(NegIndependent_C)){
  prots<-getUniProt(NegIndependent_C[j,2])
  cat(paste('>',NegIndependent_C[j,2],'\n'))
  }

sink()
