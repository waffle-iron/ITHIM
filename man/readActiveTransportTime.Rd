% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions-PA.R
\name{readActiveTransportTime}
\alias{readActiveTransportTime}
\title{Read Active Transport File}
\usage{
readActiveTransportTime(filename)
}
\arguments{
\item{filename}{A character string with the name of the active
transport csv file.  There is no default value.  The order of
the rows matters.  ageClass must be given in increasing order.}
}
\value{
A list of two matrices; mean walking time and mean cycling
    time in minutes per week.
}
\description{
This function reads in a csv file with mean values for walking and
cycling times, stratified by age and sex.  The format of this file
is described at \url{https://ithim.ghi.wisc.edu/}.
}
\note{
This function is called from createITHIM and is not needed
    directly by the user.
}

