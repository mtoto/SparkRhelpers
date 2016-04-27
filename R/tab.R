#' A Tabulate Function
#'
#' This function allows you attain frequency tables 
#' of single columns from a SparkR DataFrame.
#' @param df The name of the DataFrame.
#' @param col The name of the column, character string.
#' @keywords data-exploration, table, frequency
#' @export
#' @examples
#' tab(iris, "Sepal_Length")

tab <- function(df, col) {
        ct <- crosstab(df,col,col)
        tab <- unlist(lapply(ct[-1], sum))
        tab.sorted <- tab[sort(names(tab))]
        return(tab.sorted)
}

