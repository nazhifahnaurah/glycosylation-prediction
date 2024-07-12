if (interactive()) {
  file_neg2 = file.path(path.package("BioSeqClass"), "example", "NegIndependent_N.pep")
  seq1_neg = as.matrix(read.csv(file_neg2, header = F))[,1]
  
  H1_neg = featureHydro(seq1_neg, "kpm")[,-16]
}