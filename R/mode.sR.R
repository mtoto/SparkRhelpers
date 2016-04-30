#' A Mode Function
#'
#' This function computes the sample mode
#' of a single column from a SparkR DataFrame.
#' @param df The name of the DataFrame.
#' @param col The name of the column, character string.
#' @keywords data-exploration, mode, frequency, sparkR, summary statistics
#' @export
#' @examples
#' mode.sR(iris, "Sepal_Length")

mode.sR <- function(df, col) {

  tab.sorted <- table.sR(df, col)
  index <- which.max(tab.sorted)
  mode <- as.numeric(names(tab.sorted)[index])
  return(mode)

}
