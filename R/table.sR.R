#' A Tabulate Function
#'
#' This function allows you to attain a frequency table
#' of a single or two columns from a SparkR DataFrame.
#' The output is meant to replicate that of base::table().
#' @param df The name of the DataFrame.
#' @param col The name of the column, character string.
#' @keywords data-exploration, table, frequency, sparkR
#' @export
#' @examples
#' table.sR(iris, "Sepal_Length")
#' table.sR(iris, "Sepal_Length", "Sepal_Width")

table.sR <- function(df, col, col2 = col) {

  ct <- crosstab(df, col, col2)

  if (col2 != col) {

    m <- as.matrix(ct[-1])
    dimnames(m)[[1]] <- as.character(ct[,1])
    dimnames(m)[[2]] <- colnames(ct[-1])
    tab <- as.table(m)
    tab.sorted <- tab[sort(rownames(tab)),sort(colnames(tab))]

  } else {

        tab <- unlist(lapply(ct[-1], sum))
        tab.sorted <- tab[sort(names(tab))]
  }

  return(tab.sorted)
}


