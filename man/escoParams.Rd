% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Params-methods.R
\docType{class}
\name{escoParams}
\alias{escoParams}
\alias{escoParams-class}
\title{The escoParams class}
\description{
S4 class that holds parameters for the ESCO simulation.
}
\section{Parameters}{
 
The ESCO simulation requires the following parameters:

\describe{
    \item{\code{nGenes}}{The number of genes to simulate.}
    \item{\code{nCells}}{The number of cells to simulate.}
    \item{\code{[seed]}}{Seed to use for generating random numbers.}
    \item{\emph{Mean parameters}}{
        \describe{
            \item{\code{[mean.method]}}{Whether to use a gamma distribution 
            or a given density.}
            \item{\code{mean.dens}}{A density object.}
            \item{\code{mean.shape}}{Shape parameter for the mean gamma
            distribution.}
            \item{\code{mean.rate}}{Rate parameter for the mean gamma
            distribution.}
        }
    }
    \item{\emph{Library size parameters}}{
        \describe{
            \item{[lib.method]}{Whether to use a gamma distribution 
            or a given density.}
            \item{lib.dens}{A density object.}
            \item{\code{lib.loc}}{Location (meanlog) parameter for the
            library size log-normal distribution, or mean parameter if a
            normal distribution is used.}
            \item{\code{lib.scale}}{Scale (sdlog) parameter for the library
            size log-normal distribution, or sd parameter if a normal
            distribution is used.}
            \item{\code{lib.norm}}{Logical. Whether to use a normal
            distribution for library sizes instead of a log-normal.}
        }
    }
    \item{\emph{Expression outlier parameters}}{
        \describe{
            \item{\code{out.prob}}{Probability that a gene is an expression
            outlier.}
            \item{\code{out.facLoc}}{Location (meanlog) parameter for the
            expression outlier factor log-normal distribution.}
            \item{\code{out.facScale}}{Scale (sdlog) parameter for the
            expression outlier factor log-normal distribution.}
        }
    }
    \item{\emph{Group parameters}}{
        \describe{
            \item{\code{[nGroups]}}{The number of groups to simulate.}
            \item{\code{[group.prob]}}{Probability that a cell comes from a
            group.}
        }
    }
   
   \item{\emph{Tree parameters}}{
        \describe{
            \item{\code{[tree]}}{The tree structure to simulate.}
        }
    }
    
    \item{\emph{Differential expression parameters}}{
        \describe{
            \item{\code{[de.center]}}{The mean of the tree DE factors.}
            \item{\code{[de.prob]}}{Probability that a gene is differentially
            expressed in a group. Can be a vector.}
            \item{\code{[de.loProb]}}{Probability that a differentially
            expressed gene is down-regulated. Can be a vector.}
            \item{\code{[de.facLoc]}}{Location (meanlog) parameter for the
            differential expression factor log-normal distribution. Can be a
            vector.}
            \item{\code{[de.facScale]}}{Scale (sdlog) parameter for the
            differential expression factor log-normal distribution. Can be a
            vector.}
        }
    }
    \item{\emph{Biological Coefficient of Variation parameters}}{
        \describe{
            \item{\code{bcv.common}}{Underlying common dispersion across all
            genes.}
            \item{\code{bcv.df}}{Degrees of Freedom for the BCV inverse
            chi-squared distribution.}
        }
    }
    \item{\emph{Dropout parameters}}{
        \describe{
            \item{\code{[dropout.type]}}{The type of dropout to simulate.
            "none" indicates no dropout, "zeroinflate" uses zero 
            inflation model to add dropouts,
             "downsampling" uses similar procedure in 
             SymSim to mimic the experimental steps 
             for adding dropouts.}
            \item{\code{dropout.mid}}{Midpoint parameter for the dropout
            logistic function.}
            \item{\code{dropout.shape}}{Shape parameter for the dropout
            logistic function.}
            \item{\code{[alpha_mean]}}{Mean parameter 
            for the dwonsampling
             gamma function.}
            \item{\code{[alpha_sd]}}{Standard variance parameter 
            for the downsampling gamma function.}
            \item{\code{[lenslope]}}{Shape parameter for the dropout
            logistic function.}
             \item{\code{[nbins]}}{Shape parameter for the dropout
            logistic function.}
            \item{\code{[amp_bias_limt]}}{Shape parameter for the dropout
            logistic function.}
            \item{\code{[rate_2PCR]}}{PCR efficiency, usually very high}
            \item{\code{[LinearAmp]}}{if linear amplification is 
            used for pre-amplification step, default is FALSE}
            \item{\code{[LinearAmp_coef]}}{the coeficient of
             linear amplification, 
            that is, how many times each molecule is amplified by}
            \item{\code{[depth_mean]}}{Mean parameter of the 
            sequencing depths.}
            \item{\code{[depth_sd]}}{Standard variance parameter of 
            sequencing depths.}
        }
    }
 }

The parameters not shown in brackets can be 
estimated from real data using
\code{\link{escoEstimate}}. For details of 
the Splatter simulation
see \code{\link{escoSimulate}}.
}

