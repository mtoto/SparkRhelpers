#' A Median Function
#'
<<<<<<< HEAD
#' This function computes the sample median of a
#' single column from a SparkR DataFrame.
=======
#' This function computes the sample median
#' of a single column from a SparkR DataFrame.
>>>>>>> median
#' @param df The name of the DataFrame.
#' @param col The name of the column, character string.
#' @keywords data-exploration, median, frequency, sparkR, summary statistics
#' @export
#' @examples
#' median.sR(iris, "Sepal_Length")

median.sR <- function(df, col) {

  tab.sorted <- table.sR(df, col)
  index <- min(which(cumsum(tab.sorted) >= sum(tab.sorted)/2))
<<<<<<< HEAD
  med <- as.numeric(names(t)[index])
=======
  med <- as.numeric(names(tab.sorted)[index])
>>>>>>> median
  return(med)

}



