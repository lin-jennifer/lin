#' Confidence Interval from a t Distribution
#'
#' Helpful functions to calculate a confidence interval
#' using a t-distribution
#'
#' NOTE: This is not NOT intended from a z-distribution.
#' See relevant zscoreCI file for those calculations
#'
#' @name tscoreCI
#'
#' @param x x-bar for observed mean
#' @param se Standard Error -- see se() from zscoreCI section
#' @param ci Confidence Interval Level
#' @param n Number of participants
#'
#' @seealso zCI(), zCIupper(), zCIlower()
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
#' tCIupper(x, se, ci, n) # 4.325559
#' tCIlower(x, se, ci, n) # 2.674441
#' tMOE(se, ci, n)        # 0.8255594
#'
#'
#' @export
tCIupper <- function(x, se, ci, n){
  x + (qt((ci + ((1-ci)/2)), df = n - 1))*se
}

#' @name tscoreCI
#' @export
tCIlower <- function(x, se, ci, n){
  x - (qt((ci + ((1-ci)/2)), df = n - 1))*se
}

#' @name tscoreCI
#'
#' @export
tCI <- function(x, se, ci, n){
  upper <- x + (qt((ci + ((1-ci)/2)), df = n - 1))*se
  lower <- x - (qt((ci + ((1-ci)/2)), df = n - 1))*se
  return(c(lower, upper))
}


#' @name tscoreCI
#'
#' @export
tMOE <- function(se, ci, n){
  (qt((ci + ((1-ci)/2)), df = n - 1))*se
}
