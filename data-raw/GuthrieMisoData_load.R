## GuthrieMisoData_load.R

# load libraries
library(phyloseq)


# Import miso RDS
miso <- readRDS("data-raw/MISO_16S.prop.clean.rds")

# Import miso_counts RDS
miso_counts <- readRDS("data-raw/MISO_16S.clean.rds")

## make data objets available to the package

# import miso
usethis::use_data(miso, overwrite = TRUE)

# import miso_counts
usethis::use_data(miso_counts, overwrite = TRUE)

## declare the needed packages for accessing the data

usethis::use_import_from("phyloseq", "phyloseq")
