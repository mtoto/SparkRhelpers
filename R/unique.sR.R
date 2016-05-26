#' A Unique Function
#'
#' This function allows you to attain a unique values
#' of a single column from a SparkR DataFrame.
#' The output is meant to replicate that of base::unique().
#' @param df The name of the DataFrame.
#' @param col The name of the column, character string.
#' @keywords data-exploration, table, frequency, sparkR
#' @export
#' @examples
#' unique.sR(iris, "Sepal_Length")
#'

unique.sR <- function(df, col) {

  vals <- names(table.sR(df, col))
  return(vals)

}

