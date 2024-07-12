library(protr)
NegIndependent_O<-read.csv("D:/BioMedik/Datasets Glycomine/NegIndependent_O.txt", header = FALSE, sep="\t")
windows=15;

jumlah_seq=1
seq_iter=array()

sink('NegIndependent_O.fasta')
for(j in 1:nrow(NegIndependent_O)){
  prots<-getUniProt(NegIndependent_O[j,2])
  start=NegIndependent_O[j,3]-((windows-1)/2)
  end=NegIndependent_O[j,3]+((windows-1)/2)
  sq=substr(prots[[1]],start,end)
  #print(sq)
  #print(paste("",seq))
  
  
  if(nchar(sq)==windows){
    cat(paste(sq,'\n'))
    seq_iter[jumlah_seq]=sq
    jumlah_seq=jumlah_seq+1
  }
}
sink()
