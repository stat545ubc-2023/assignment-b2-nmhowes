
#'easyplot
#'@description This function creates a standard scatter plot with 0.8 size blue points using ggplot. This function makes it easy to create a plot to look at the relationship between two numerical variables in a dataset.
#'@param x A numerical variable in a dataset.
#I named this variable x to describe the independent variable being investigated
#' @param y A numerical variable in a dataset.
#I named this variable y to describe the dependent variable being investigated
#' @return A blue scatter plot using two numerical variables on the x and y axis
#' @export
#' @examples
#' df <- data.frame(A=c(4, 8, 10, 2, 15, 12, 7, 22), B=c(6, 3, 9, 7, 6, 8, 14, 10))
#' easyplot(df$A, df$B)

easyplot <- function(x, y) {
  xnum <- x[!is.na(x)]
  if(!is.numeric(xnum)) {
    stop('please input a numeric variable')
  }
    ggplot2::ggplot(mapping = aes(x, y)) +
    geom_point(size = 0.8, alpha = 0.5, color = "blue")
}



