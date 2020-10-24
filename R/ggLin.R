#' Jennifer's ggplot2 Theme
#'
#' I find that I am copying and psting the same long command for
#' my favorite theme settings, so I figure I'd write that into this package
#' to simplify the process.
#'
#' The specifications of this theme is as follows:
#' \code{ \cr
#' theme_classic()+   \cr
#' theme(   \cr
#' plot.title         = element_text(hjust = 0.5, size = 24, colour="black"),  \cr
#'  plot.subtitle      = element_text(hjust = 0.5, size = 18, colour="black"),  \cr
#'  legend.title       = element_text(hjust = 0.5, size = 16, colour="black"),  \cr
#'  plot.caption       = element_text(size = 12, colour="black"),  \cr
#'  axis.title         = element_text(size = 16, colour="black"),  \cr
#'  axis.text.x        = element_text(size = 14, colour="black"),  \cr
#'  axis.text.y        = element_text(size = 14, colour="black"),  \cr
#'  legend.title.align = 0.5)  \cr
#'}
#'
#' @name ggLin
#'
#' @param ... Passed to [ggplot2::theme()]
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(y=mpg, x=disp, color=cyl)) +
#'   geom_point() +
#'   theme_lin()
#'
#'
#' @importFrom ggplot2 ggplot
#' @export
theme_lin <- function(...){
  theme_classic()+
    theme(
      plot.title         = element_text(hjust = 0.5, size = 24, colour="black"),
      plot.subtitle      = element_text(hjust = 0.5, size = 18, colour="black"),
      legend.title       = element_text(hjust = 0.5, size = 16, colour="black"),
      plot.caption       = element_text(size = 12, colour="black"),
      axis.title         = element_text(size = 16, colour="black"),
      axis.text.x        = element_text(size = 14, colour="black"),
      axis.text.y        = element_text(size = 14, colour="black"),
      legend.title.align = 0.5)
}
