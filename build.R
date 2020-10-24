# ------------------------------- #
# Install Package From Source
# ------------------------------- #

# Remove previous version just in Case
remove.packages("jlinutils")

# Install with devtools
library(devtools)
devtools::install("../jlinutils")

# Load to check it is all good
library(jlinutils)
