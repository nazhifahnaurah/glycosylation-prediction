#AAindex
if (interactive()) {
  file = file.path(path.package("BioSeqClass"), "example", "PosIndependent_C.pep")
  seq  = as.matrix(read.csv(file, header = F)) [,1]
  AI_pos = featureAAindex(seq, "ANDN920101") [,-16]
}