## GuthrieMisoData_load.R

# load libraries
library(tidyverse)


# load data
testdriveR_raw <- read_tsv("data-raw/test-driveR.tsv", col_names = TRUE)

# Tidying data
testdriveRData <- type_convert(testdriveR_raw)


# This needs to be run last within the script
usethis::use_data(testdriveRData, overwrite = TRUE)
