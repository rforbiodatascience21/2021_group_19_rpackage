#' Generate random DNA sequence of specified length
#' 
#' \code{random_dna} generates based on the four nucleotides A, T, G and C a random DNA sequence of 
#' a manually specified length. The function samples with replacement, meaning one nucleotide can 
#' appear multiple times.
#' 
#' @param l an integer specifying the length of the wanted DNA sequence
#' @return Random DNA sequence of length l
#' 
#' @examples 
#' random_dna(l =  5)
#' 
#' @export




random_dna <- function(l){
  nucleotides <- sample(c("A", "T", "G", "C"), size = l, replace = TRUE)
  dna = paste0(nucleotides, collapse = "")
  return(dna)
}
