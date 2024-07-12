library(devtools)
library(tidyverse)
library(protr)
source_url("https://raw.githubusercontent.com/lrjoshi/FastaTabular/master/fasta_and_tabular.R")
NegIndependent_C<-read.csv("D:/BioMedik/Datasets Glycomine/NegIndependent_C.txt", header = FALSE, sep="\t")
windows=15;

jumlah_seq=1
seq_iter=array()

for(j in 1:nrow(NegIndependent_C)){
  prots<-getUniProt(NegIndependent_C[j,2])
  start=NegIndependent_C[j,3]-((windows-1)/2)
  end=NegIndependent_C[j,3]+((windows-1)/2)
  sq=substr(prots[[1]],start,end)
  #print(paste("",seq))
  
    if(nchar(sq)==windows){
      print (sq)
      seq_iter[jumlah_seq]=sq
      jumlah_seq=jumlah_seq+1
    }
}

data<-write.csv(seq_iter, file = "NegIndependent_C.csv", row.names = F)
TabularToFasta("NegIndependent_C.csv")

