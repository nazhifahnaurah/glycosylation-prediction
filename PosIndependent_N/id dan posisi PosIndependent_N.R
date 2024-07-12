library(protr)
PosIndependent_N<-read.csv("D:/BioMedik/Datasets Glycomine/PosIndependent_N.txt", header = FALSE, sep="\t")
windows=15;

jumlah_seq=1
seq_iter=array()

sink('output_PosIndependent_N.fasta')
for(j in 1:nrow(PosIndependent_N)){
  prots<-getUniProt(PosIndependent_N[j,2])
  start=PosIndependent_N[j,3]-((windows-1)/2)
  end=PosIndependent_N[j,3]+((windows-1)/2)
  sq=substr(prots[[1]],start,end)
  #print(sq)
  #print(paste("",seq))
  
  
  if(nchar(sq)==windows){
    cat(paste('>',PosIndependent_N[j,2],PosIndependent_N[j,3],'\n'))
    cat(paste(sq,'\n'))
    seq_iter[jumlah_seq]=sq
    jumlah_seq=jumlah_seq+1
  }
}
sink()
