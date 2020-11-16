# `lin`: Jennifer Lin's Most Used R Functions

[![Build Status](https://travis-ci.org/lin-jennifer/lin.svg?branch=main)](https://travis-ci.org/lin-jennifer/lin)

This package contains my most used commands and R features.

This may not be the most useful for the general public, but may be necessary if you are collaborating with me or interacting with my R code.

Therefore, if you need to install it, use `devtools` as follows:

```
library(devtools)
install_github("lin-jennifer/lin")
library(lin)
```

## CHANGELOG

- 11-15-2020: `zscore()` and `tCI()` related functions depreciated. Moved to `polstat`. Install `polstat` using: `devtools::install_github("lin-jennifer/polstat")`