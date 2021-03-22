#' Creating codons based on DNA sequence. 
#' 
#' \code{mk_codons} takes a DNA sequence and generates a vector of codons of 3 
#' nucleotides. By default subseting starts at position 1, but can be changed by 
#' providing a value to s (needs to be a positive integer)
#' 
#' @param dna string of nucleotides of at least length 3.
#' @param s positive integer between 1 and lenght of dna, dictates the stating 
#' position of the subsetting. Default is s = 1.
#' @return list of characters with codons. If length of dna is not dividable by
#' 3 the remaining nucleotides are omitted. 
#' 
#' @examples 
#' mk_codons(dna, s = 1)
#' 
#' @export

mk_codons <- function(dna, s = 1){
  l = nchar(dna)
  codons <- substring(dna,
                      first = seq(from = s, to = l-3+1, by = 3),
                      last = seq(from = 3+s-1, to = l, by = 3))
  return(codons)
}


