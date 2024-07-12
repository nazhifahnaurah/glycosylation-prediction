library(protr)
NegBenchMark_C<-read.csv("D:/BioMedik/Datasets Glycomine/NegBenchMark_C.txt", header = FALSE, sep="\t")
windows=15;

jumlah_seq=1
seq_iter=array()

sink('output_NegBenchMark_C.fasta')
for(j in 1:nrow(NegBenchMark_C)){
  prots<-getUniProt(NegBenchMark_C[j,2])
  start=NegBenchMark_C[j,3]-((windows-1)/2)
  end=NegBenchMark_C[j,3]+((windows-1)/2)
  sq=substr(prots[[1]],start,end)
  #print(sq)
  #print(paste("",seq))
  
  
  if(nchar(sq)==windows){
    cat(paste('>',NegBenchMark_C[j,2],NegBenchMark_C[j,3],'\n'))
    cat(paste(sq,'\n'))
    seq_iter[jumlah_seq]=sq
    jumlah_seq=jumlah_seq+1
  }
}
sink()
