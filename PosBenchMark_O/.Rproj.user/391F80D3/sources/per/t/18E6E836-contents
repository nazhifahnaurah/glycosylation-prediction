if (interactive()) {
  file_pos2 = file.path(path.package("BioSeqClass"), "example", "PosBenchMark_O.pep")
  seq1_pos = as.matrix(read.csv(file_pos2, header = F))[,1]
  
  H1_pos = featureHydro(seq1_pos, "kpm")[,-16]
}