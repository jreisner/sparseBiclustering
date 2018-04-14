# sparseBiclustering
This package is currently being updated on a nearly daily basis, so check back for updates.


I haven't had the time to compile a complete vignette of the package yet, but here is a toy example which is also found in the help page for the function `bicluster()`. (This example is from the commented portion of the bicluster.R file in the R folder above.)

```r
devtools::install_github("jreisner/sparseBiclustering")
library(sparseBiclustering)
?bicluster

dat <- kronecker(matrix(1:6, nrow = 2, ncol = 3), matrix(5, nrow = 3, ncol = 4))
dat[sample(1:length(dat), 0.5 * length(dat))] <- NA
dat <- dat[sample(1:nrow(dat), nrow(dat)), sample(1:ncol(dat), ncol(dat))]
P01 <- partition_gen(12, 3)
Q01 <- partition_gen(6, 2)

bc <- bicluster(dat, P01, Q01, miss_val = mean(dat, na.rm = TRUE),
                miss_val_sd = sd(dat, na.rm = TRUE),
                col_min_num = 2, row_min_num = 2,
                col_num_to_move = 1, row_num_to_move = 1,
                max.iter = 10)
bc
gg_sse(bc)
gg_bicluster(bc, dat)
```
