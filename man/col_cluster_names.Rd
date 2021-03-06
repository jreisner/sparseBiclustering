% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/col_cluster_names.R
\name{col_cluster_names}
\alias{col_cluster_names}
\title{Get column names in each column cluster}
\usage{
col_cluster_names(x, data)
}
\arguments{
\item{x}{Biclustering object to extract column cluster designation from}

\item{data}{Data that contains the column names}
}
\value{
A data frame with two columns: \code{cluster} corresponds to the column
cluster and \code{name} gives the column names in each cluster.
}
\description{
Get column names in each column cluster
}
\examples{
data("synthetic")
rownames(synthetic) <- letters[1:nrow(synthetic)]
colnames(synthetic) <- letters[1:ncol(synthetic)]
bc <- biclustermd(synthetic, col_clusters = 3, row_clusters = 2,
                miss_val = mean(synthetic, na.rm = TRUE),
                miss_val_sd = sd(synthetic, na.rm = TRUE),
                col_min_num = 2, row_min_num = 2,
                col_num_to_move = 1, row_num_to_move = 1,
                max.iter = 10)
bc
}
