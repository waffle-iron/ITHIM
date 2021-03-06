% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions-PA.R
\name{computeMeanMatrices}
\alias{computeMeanMatrices}
\title{Compute Matrices of Active Transport Means}
\usage{
computeMeanMatrices(parList)
}
\arguments{
\item{parList}{The list of parameters generated by
\code{\link{createParameterList}}}
}
\value{
A list with matrices of means

\item{meanWalkTime}{A numerical matrix of mean weekly time (hours?) for walking as transport}
\item{meanCycleTime}{A numerical matrix of mean weekly time for cycling as transport}
\item{meanWalkMET}{A numerical matrix of mean weekly METs for walking as transport}
\item{meanCycleMET}{A numerical matrix of mean weekly METs for cycling as transport}
\item{meanActiveTransportTime}{A numerical matrix containing mean weekly active transport time}
\item{sdActiveTransportTime}{A numerical matrix containing standard deviation of weekly active transport time}
\item{propTimeCycling}{The proportion of time walking out of walking or cycling as active transport}
}
\description{
This function computes mean walking/cycling time/speed, as well as
active transport METs mean and standard deviation
}
\note{
Currently all age by sex classes are assigned 6 for weekly
    cycling for transport METs.  This means we assume that, unlike
    walking, cycling energy is not a function of speed.

meanCycleMET is constant.  So, it's really a parameter and not a function of parameters.

cycling speed has been removed

We use a constant coefficient of variation across strata to compute standard deviations
}
\seealso{
\code{\link{createITHIM}}
}

