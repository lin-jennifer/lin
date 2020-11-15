#' Two Sample T Test and Confidence Interval
#'
#' For PS 403 purposes. In real life, you should always just use
#' \code{t.test()}
#'
#' @name Tstats
#'
#'
#' @param x1 mean for sample 1
#' @param x2 mean for sample 2
#' @param s1 sd for sample 1
#' @param s2 sd for sample 2
#' @param n1 number on sample 1
#' @param n2 number on sample 2
#'
#' @examples
#' x1 = 5
#' x2 = 8
#' s1 = 0.6
#' s2 = 0.4
#' n1 = 30
#' n2 = 25
#'
#' t(x1, s1, n1, x2, s2, n2)
#'
#' @export
t <- function(x1, s1, n1, x2, s2, n2){
  test  = "Two sample t test with Equal Variances"
  df    = n1 + n2 - 2
  se    = sqrt((((n1 - 1)*s1^2) + ((n2 - 1)*s2^2))/df)*sqrt((1/n1) + (1/n2))
  diff  = x1 - x2
  t     = diff/se
  pval  = 2*pt(t, df)
  out   = data.frame(df, se, t, pval)
  cat("\nStatistical Test\n")
  cat(format(test), "\n")
  cat("Results:")
  cat("\n")

  cat("Standard Error:", format(se), "\n")
  cat("T Score:", format(t), "\n")
  cat("p value:", format(pval), "\n")
}

#' @name Tstats
#' @export
t.welch <- function(x1, s1, n1, x2, s2, n2){
  test  = "Two sample t test with Unequal Variances"
  se    = sqrt(((s1^2)/n1) + ((s2^2)/n2))
  diff  = x1 - x2
  t     = diff/se
  out   = data.frame(se, t)
  cat("\nStatistical Test\n")
  cat(format(test), "\n")
  cat("Results:")
  cat("\n")

  cat("Standard Error:", format(se), "\n")
  cat("T Score:", format(t), "\n")
}

