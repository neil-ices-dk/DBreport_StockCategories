## install.packages("devtools")
## devtools::install_github("ices-tools-prod/icesSD")

library(icesTAF)
library(icesSD)

mkdir("data")

sd <- getSD()
cats <- sd[sd$ActiveYear==2017,
           c("SpeciesCommonName","StockKeyLabel","DataCategory","ExpertGroup")]
rownames(cats) <- NULL

# write out Stocks and categories
write.taf(cats, "data/StockCategories.csv")
