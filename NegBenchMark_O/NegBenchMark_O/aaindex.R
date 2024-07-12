#AAindex
if (interactive()) {
  file = file.path(path.package("BioSeqClass"), "example", "NegBenchMark_O.pep")
  seq_neg  = as.matrix(read.csv(file, header = F)) [,1]
  #AI_all = featureAAindex(seq)
  AI_neg = featureAAindex(seq_neg, "ANDN920101") [,-16]
  #AI_neg2 <- AI_neg[,-16]
  
  
  
  #ACI_all = featureACI(seq)
  #ACI_ANDN920101 = featureACI(seq,"ANDN920101")
  
  #ACF_all = featureACF(seq,1)
  #ACF_ANDN920101 = featureACF(seq,3,"ANDN920101")
}