#' A Histogram Function
#'
#' This function generates a frequency histogram
#' of a single column from a SparkR DataFrame.
#' @param df The name of the DataFrame.
#' @param col The name of the column, character string.
#' @keywords data-exploration, table, frequency, visualisation, sparkR
#' @export
#' @examples
#' hist.sR(iris, "Sepal_Length")

hist.sR <- function(df, col) {
  tab.sorted <- table.sR(df, col)
  graph <- hist(tab.sorted,
                xlab = col,
                main = paste("Histogram of" , col))
  return(graph)
}

