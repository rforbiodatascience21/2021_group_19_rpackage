#' Creating aa based on sequence of codons. 
#' 
#' \code{mk_codons} takes a list of characters containing codons and translate it into the one latter abbreviation of the amino acid. 
#' A stopcodon translate to "*" 
#' 
#' @param codons list of characters with codons.
#
#' @return A string of one letter abbreviation of amino acids 
#' 
#' @examples 
#' dna_codons_to_aa(c("TTT", "TAA"))
#' 
#' @export


dna_codons_to_aa <- function(codons){
  std_code_table <- c("TTT" = "F", "TCT" = "S", "TAT" = "Y", "TGT" = "C",
                      "TTC" = "F", "TCC" = "S", "TAC" = "Y", "TGC" = "C",
                      "TTA" = "L", "TCA" = "S", "TAA" = "*", "TGA" = "*",
                      "TTG" = "L", "TCG" = "S", "TAG" = "*", "TGG" = "W",
                      "CTT" = "L", "CCT" = "P", "CAT" = "H", "CGT" = "R",
                      "CTC" = "L", "CCC" = "P", "CAC" = "H", "CGC" = "R",
                      "CTA" = "L", "CCA" = "P", "CAA" = "Q", "CGA" = "R",
                      "CTG" = "L", "CCG" = "P", "CAG" = "Q", "CGG" = "R",
                      "ATT" = "I", "ACT" = "T", "AAT" = "N", "AGT" = "S",
                      "ATC" = "I", "ACC" = "T", "AAC" = "N", "AGC" = "S",
                      "ATA" = "I", "ACA" = "T", "AAA" = "K", "AGA" = "R",
                      "ATG" = "M", "ACG" = "T", "AAG" = "K", "AGG" = "R",
                      "GTT" = "V", "GCT" = "A", "GAT" = "D", "GGT" = "G",
                      "GTC" = "V", "GCC" = "A", "GAC" = "D", "GGC" = "G",
                      "GTA" = "V", "GCA" = "A", "GAA" = "E", "GGA" = "G",
                      "GTG" = "V", "GCG" = "A", "GAG" = "E", "GGG" = "G")
  aa <- paste0(std_code_table[codons], collapse = "")
  return(aa)
}