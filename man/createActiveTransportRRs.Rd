% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions-PA.R
\name{createActiveTransportRRs}
\alias{createActiveTransportRRs}
\title{Set Risk Ratios for Avctive Transport}
\usage{
createActiveTransportRRs(nQuantiles = 5)
}
\value{
A numerical vector of risk ratios given MET exposure
}
\description{
Set risk ratios for a list of diseases given MET exposure.  These
values are used to compute change in disease burden due to active
transport increase.
}
\note{
To see the default values and how they are computed run
    \code{createActiveTransportRRs} with no parentheses
}
\seealso{
\code{\link{compareModels}}
}

