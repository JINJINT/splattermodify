% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/esco-simulate.R
\name{amplify_cell}
\alias{amplify_cell}
\title{Simulate amplification, library prep, and the sequencing processes.
(This function is borrowed from SymSim).}
\usage{
amplify_cell(true_counts_1cell, rate_2cap, gene_len, amp_bias, rate_2PCR,
  nPCR1, nPCR2, LinearAmp, LinearAmp_coef, N_molecules_SEQ)
}
\arguments{
\item{true_counts_1cell}{the true transcript counts for one cell (one vector)}

\item{rate_2cap}{the capture efficiency for this cell}

\item{gene_len}{gene lengths for the genes/transcripts, 
sampled from real human transcript length}

\item{amp_bias}{amplification bias for each gene, a vector of length ngenes}

\item{rate_2PCR}{PCR efficiency, usually very high}

\item{nPCR1}{the number of PCR cycles}

\item{nPCR2}{the number of second PCR cycles}

\item{LinearAmp}{if linear amplification is used 
for pre-amplification step, default is FALSE}

\item{LinearAmp_coef}{the coeficient of linear amplification, 
that is, how many times each molecule is amplified by}

\item{N_molecules_SEQ}{number of molecules sent for sequencing; sequencing depth}
}
\value{
UMI counts
}
\description{
Simulate amplification, library prep, and the sequencing processes.
(This function is borrowed from SymSim).
}
\references{
Zhang X, Xu C, Yosef N. Simulating multiple faceted 
variability in single cell RNA sequencing. 
Nature communications. 2019 Jun 13;10(1):1-6. 
\url{https://www.nature.com/articles/s41467-019-10500-w}
}
