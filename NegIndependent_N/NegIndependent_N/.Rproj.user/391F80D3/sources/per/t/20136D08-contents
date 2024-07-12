#CTD  Negative
if (interactive()) {
  file_neg1 = file.path(path.package("BioSeqClass"), "example", "output_NegIndependent_N.fasta")
  tmp_neg = readAAStringSet(file_neg1)
  
  proteinSeq_neg = as.character(tmp_neg)
  
  #CTD1_neg = featureCTD(proteinSeq_neg, class = elements("aminoacid"))
  CTD2_neg = featureCTD(proteinSeq_neg, class = aaClass("aaV"))[,-22:-26]
  CTD2_neg[is.na(CTD2_neg)] <- 0
}