library(protr)
NegIndependent_C<-read.csv("C:/Users/Lenovo/Documents/glikosilasi/Datasets Glycomine/NegIndependent_C.txt", header = FALSE, sep="\t")
windows=15;

jumlah_seq=1
seq_iter=array()

sink('output_NegIndependentC.fasta')
for(j in 1:nrow(NegIndependent_C)){
  prots<-getUniProt(NegIndependent_C[j,2])
  start=NegIndependent_C[j,3]-((windows-1)/2)
  end=NegIndependent_C[j,3]+((windows-1)/2)
  sq=substr(prots[[1]],start,end)
  #print(sq)
  #print(paste("",seq))
  
  
  if(nchar(sq)==windows){
    cat(paste('>',NegIndependent_C[j,2],NegIndependent_C[j,3],'\n'))
    cat(paste(sq,'\n'))
    seq_iter[jumlah_seq]=sq
    jumlah_seq=jumlah_seq+1
  }
}
sink()
