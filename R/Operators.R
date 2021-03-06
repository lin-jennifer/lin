#' Operators
#'
#' Some useful operators outside of the standard ones in R.
#'
#' @name Operators
#'
#' @param x a vector
#' @param y a vector to match
#'
#' @examples
#' y = c(3, 4, 5, NA)
#'
#' # Not In -- and omits NA
#' y %nin% 3    # FALSE  TRUE  TRUE  TRUE
#' y %NIN% 3    # FALSE  TRUE  TRUE    NA
#'
#' # IN -- Omits NA
#' y %in% 3     # TRUE FALSE FALSE FALSE
#' y %IN% 3     # TRUE FALSE FALSE    NA
#'
#' @return logical vecotor of items in x not in y
#' @export
"%nin%" <- function(x, y) {
  return( !(x %in% y) )
}

#' @name Operators
#' @return logical vecotor of items in x not in y, omits NAs
#' @export
"%NIN%" <- function(x, y) {
  result <- x %nin% y
  result[is.na(x)] <- NA
  result
}

#' @name Operators
#' @return logical vecotor of items in x in y, omits NAs
#' @export
"%IN%" <- function (x, y) {
  result <- x %in% y
  result[is.na(x)] <- NA
  result
}
