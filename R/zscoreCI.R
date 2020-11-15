#' One Sample Confidence Interval from a Normal Distribution
#'
#' Helpful functions to calculate a one-sample confidence interval
#' using a z-distribution
#'
#' NOTE: This is not NOT intended from a t-distribution.
#' See relavant tscoreCI file for those calculations
#'
#' @name zscoreCI
#'
#' @param x x-bar for observed mean
#' @param se Standard Error -- see se()
#' @param ci Confidence Interval Level
#' @param sd Standard Deviation -- reference sdNA()
#' @param n Number of participants
#'
#' @seealso sdNA()
#'
#' @examples
#' x = 3.5
#' sd = 2
#' n = 25
#'
#' se <- se(sd, n)  # 0.4
#'
#' ci = 0.95  # for 95% Confidence Interval
#'
#' zCIupper(x, se, ci) # 4.283986
#' zCIlower(x, se, ci) # 2.716014
#' zMOE(se, ci)        # 0.7839856
#'
#' @export
se <- function(sd, n){
  sd/sqrt(n)
}

#' @name zscoreCI
#' @export
zCIupper <- function(x, se, ci){
  x + (qnorm((ci + ((1-ci)/2))))*se
}

#' @name zscoreCI
#' @export
zCIlower <- function(x, se, ci){
  x - (qnorm((ci + ((1-ci)/2))))*se
}

#' @name zscoreCI
#'
#' @export
zCI <- function(x, se, ci){
  upper <- x + (qnorm((ci + ((1-ci)/2))))*se
  lower <- x - (qnorm((ci + ((1-ci)/2))))*se
  return(c(lower, upper))
}


#' @name zscoreCI
#'
#' @export
zMOE <- function(se, ci){
  (qnorm((ci + ((1-ci)/2))))*se
}
