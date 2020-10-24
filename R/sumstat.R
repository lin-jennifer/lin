#' Summary Statistics Calculations
#'
#' Common functions for calculating central tendancies but with
#' NA parameters set to TRUE unlike the defaults.
#'
#' Credits to John Bullock for the inspiration. Some of this is from his
#' Bullock package, but others are my own.
#'
#' @source \url{https://github.com/jbullock35/Bullock}
#'
#' @name SummaryStats
#'
#' @param x a vector
#' @param w a weight variable
#'
#' @examples
#' x <- c(1, 1, 2, 3, 5, 8, 13, 21, NA, NA, NA)
#' w <- c(0, 0, 0, 1, 1, 2, 2, 2, 0, 0, 0)
#'
#' # Mode
#' modeNA(x)    # 1
#'
#' # Mean and Weighted Mean
#' meanNA(x)    # 6.75
#' wMeanNA(x)   # 11.5
#'
#'
#' @export
modeNA <- function(x) {
  stopifnot(!is.null(x))
  x <- na.omit(x)
  uniqv <- unique(x)
  uniqv[which.max(tabulate(match(x, uniqv)))]
}

#' @name SummaryStats
#' @export
meanNA <- function(x){
  stopifnot(!is.null(x))
  mean(x, na.rm = TRUE)
}

#' @name SummaryStats
#' @export
wMeanNA <- function(x, w){
  stopifnot(!is.null(x))
  weighted.mean(x, w, na.rm = TRUE)
}
