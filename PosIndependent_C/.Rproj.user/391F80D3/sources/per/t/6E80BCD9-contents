library(protr)
PosIndependent_C<-read.csv("D:/BioMedik/Datasets Glycomine/PosIndependent_C.txt", header = FALSE, sep="\t")
windows=15;

jumlah_seq=1
seq_iter=array()

sink('PosIndependent_C.fasta')
for(j in 1:nrow(PosIndependent_C)){
  prots<-getUniProt(PosIndependent_C[j,2])
  start=PosIndependent_C[j,3]-((windows-1)/2)
  end=PosIndependent_C[j,3]+((windows-1)/2)
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
