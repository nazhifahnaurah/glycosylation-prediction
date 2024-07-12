if(interactive()){
  file = file.path(path.package("BioSeqClass"), "example", "output_NegIndependentC.fasta")  
  tmp = readAAStringSet(file) 
  proteinSeq = as.character(tmp)
  
  ## Need "blastpgp" program and a formated database. Database can be formated by "formatdb" program.
  PSSM1 = featurePSSM(proteinSeq[1:27], start.pos=rep(1,8), stop.pos=rep(15,8), psiblast.path="blastpgp", database.path="./result1.fasta")  
}