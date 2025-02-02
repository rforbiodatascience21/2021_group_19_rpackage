% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/random_DNA.R
\name{random_dna}
\alias{random_dna}
\title{Generate random DNA sequence of specified length}
\usage{
random_dna(l)
}
\arguments{
\item{l}{an integer specifying the length of the wanted DNA sequence}
}
\value{
Random DNA sequence of length l
}
\description{
\code{random_dna} generates based on the four nucleotides A, T, G and C a random DNA sequence of 
a manually specified length. The function samples with replacement, meaning one nucleotide can 
appear multiple times.
}
\examples{
random_dna(l =  5)

}
