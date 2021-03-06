% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/partition_gen.R
\name{partition_gen}
\alias{partition_gen}
\title{Generate an intial, random partition matrix with N objects into K subsets/groups.}
\usage{
partition_gen(N, K)
}
\arguments{
\item{N}{Number of objects/rows in a partition matrix}

\item{K}{Desired number of partitions}
}
\value{
A partition matrix.
}
\description{
This function is used to randomly generate a partition matrix and assign rows or columns to prototypes. Must be the case that N > K.
}
