#' Two Sample Proportions Test and Confidence Interval
#'
#' For use with proportions and z-scores.
#'
#' When working with a one-sample proportion, it is suffucient to use
#' \code{prop.se()} from here and the \code{zscore()} function, replacing
#' the notions of \code{x} and \code{means} with the proper values for proportions
#'
#' When working with these functions, it is CRUCIAL that you keep in mind
#' what vales are for what. I would recommend setting up code similiar to the
#' example to keep values in order.
#'
#' @name Zprop
#'
#' @param p pi for a proportion, usually denoted as pi_0
#' @param n number of responses
#' @param p1 probability for sample 1
#' @param p2 probability for sample 2
#' @param n1 number on sample 1
#' @param n2 number on sample 2
#'
#' @examples
#' pi = 0.5
#' n = 100
#'
#' p1 = 0.25
#' n1 = 200
#' p2 = 0.45
#' n2 = 350
#'
#' prop.se(pi, n)
#' p.hat(p1, n1, p2, n2)
#'
#'
#' @export
prop.se <- function(p, n){
  sqrt((p*(1-p))/n)
}

#' @name Zprop
#'
#' @export
p.hat <- function(p1, n1, p2, n2){
  ((p1*n1) + (p2*n2))/(n1 + n2)
}

#' @name Zprop
#'
#' @export
z.prop <- function(p1, n1, p2, n2){
  test  = "Two Proportion Z test with Independent Samples"
  phat  = ((p1*n1) + (p2*n2))/(n1 + n2)
  se    = sqrt((phat*(1-phat))*((1/n1)+(1/n2)))
  diff  = p1 - p2
  z     = diff/se
  pval  = 2*pnorm(z)
  cat("\nStatistical Test\n")
  cat(format(test), "\n")
  cat("Results:")
  cat("\n")

  cat("Pi Hat:", format(phat), "\n")
  cat("Standard Error:", format(se), "\n")
  cat("Z Score:", format(z), "\n")
  cat("p value:", format(pval), "\n")
}


