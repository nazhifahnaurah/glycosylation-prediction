if(interactive()){
  file_pos3 = file.path(path.package("BioSeqClass"), "example", "PosIndependent_N.pep")
  seq2_pos = as.matrix(read.csv(file_pos3,header=F, sep = ""))
  PAC4_pos = featurePseudoAAComp(seq2_pos,4)
}