# ------------------------------- #
# Install Package From Source
# ------------------------------- #

# Remove previous version just in Case
remove.packages("lin")

# Install with devtools
library(devtools)
devtools::install("../lin")

# Load to check it is all good
library(lin)
