if(interactive()){
  file_neg3 = file.path(path.package("BioSeqClass"), "example", "NegIndependent_N.pep")
  seq2_neg = as.matrix(read.csv(file_neg3,header=F, sep = ""))
  PAC4_neg = featurePseudoAAComp(seq2_neg,4)
}