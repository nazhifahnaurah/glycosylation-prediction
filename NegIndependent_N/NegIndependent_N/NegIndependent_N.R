library(protr)
NegIndependent_N<-read.csv("D:/BioMedik/Datasets Glycomine/NegIndependent_N.txt", header = FALSE, sep="\t")
windows=15;

jumlah_seq=1
seq_iter=array()

sink('NegIndependent_N.fasta')
for(j in 1:nrow(NegIndependent_N)){
  prots<-getUniProt(NegIndependent_N[j,2])
  start=NegIndependent_N[j,3]-((windows-1)/2)
  end=NegIndependent_N[j,3]+((windows-1)/2)
  sq=substr(prots[[1]],start,end)
  #print(paste("",seq))
  
  if(nchar(sq)==windows){
    cat(paste(sq,'\n'))
    seq_iter[jumlah_seq]=sq
    jumlah_seq=jumlah_seq+1
  }
}
sink()
