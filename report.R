## Prepare tables for report

library(icesTAF)

mkdir("report")

# read in stock categories
cats <- read.taf("data/StockCategories.csv")

# do some work?

# write out report table
write.taf(cats, "report/StockCategories.csv")

# render any markdown files we want here:
rmarkdown::render("report.Rmd", output_dir = "report")
