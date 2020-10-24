#' z-score Calculations
#'
#' Calculating a standard score in Base R can be hard.
#'
#' @name zscore
#'
#' @param x the observation
#' @param mean mean of interest -- can be sample or ppulation depending on zscore interest
#' @param sd standard deviation or standard error, depending on context
#'
#' @examples
#' zscore(10, 15, 2)
#'
#' @export
zscore <- function(x, mean, sd){
  (x-mean)/sd
}
