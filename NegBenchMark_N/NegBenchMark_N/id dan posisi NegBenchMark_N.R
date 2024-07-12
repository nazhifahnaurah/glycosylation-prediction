library(protr)
NegBenchMark_N<-read.csv("D:/BioMedik/Datasets Glycomine/NegBenchMark_N.txt", header = FALSE, sep="\t")
windows=15;

jumlah_seq=1
seq_iter=array()

sink('output_NegBenchMark_N.fasta')
for(j in 1:nrow(NegBenchMark_N)){
  prots<-getUniProt(NegBenchMark_N[j,2])
  start=NegBenchMark_N[j,3]-((windows-1)/2)
  end=NegBenchMark_N[j,3]+((windows-1)/2)
  sq=substr(prots[[1]],start,end)
  #print(sq)
  #print(paste("",seq))
  
  
  if(nchar(sq)==windows){
    cat(paste('>',NegBenchMark_N[j,2],NegBenchMark_N[j,3],'\n'))
    cat(paste(sq,'\n'))
    seq_iter[jumlah_seq]=sq
    jumlah_seq=jumlah_seq+1
  }
}
sink()
