#CTD  posative
if (interactive()) {
  file_pos1 = file.path(path.package("BioSeqClass"), "example", "output_PosBenchMark_N.fasta")
  tmp_pos = readAAStringSet(file_pos1)
  
  proteinSeq_pos = as.character(tmp_pos)
  
  #CTD1_pos = featureCTD(proteinSeq_pos, class = elements("aminoacid"))
  CTD2_pos = featureCTD(proteinSeq_pos, class = aaClass("aaV"))[,-22:-26]
  CTD2_pos[is.na(CTD2_pos)] <- 0
}