#' Reverse Coding Variables
#'
#' I never actually know how to do them, so I google this every time.
#' Perhaps its time to settle this once and for all.
#'
#' Thanks goes to James Martherus.
#'
#' @source \url{https://github.com/jamesmartherus/martherus}
#'
#' @name ReverseCode
#'
#' @param var a numeric variable
#'
#' @examples
#' x1 <- c(1, 2, 3, 4, NA, 5)
#' reverse_code(x1)   #c(5, 4, 3, 2, NA, 1)
#'
#' x2 <- c(0, 1, 2, NA, 4, 7)
#' reverse_code(x2)    #c(7, 6, 5, NA, 3, 0)
#'
#' @export
reverse_code <- function(var){
  stopifnot(!is.null(var))

  # Error Messages
  if(!is.numeric(var)) stop(paste0('var is ',class(var),', must be a numeric variable'))
  if(!is.vector(var)) stop(paste0('var cannot be a vector, must be numeric variable'))

  # Begin Reverse coding
  new <- vector()

  if(min(var, na.rm = TRUE)==0){
    for (i in unique(var)) {
      new[var==i] <- abs(i - max(var, na.rm = TRUE))
    }
  }
  else if(min(var, na.rm = TRUE)!=0){
    for (i in unique(var)) {
      new[var==i] <-  (max(var, na.rm = TRUE) + 1) - i
    }
  }
  return(new)
}
