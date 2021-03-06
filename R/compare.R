#' Compare two tables
#' 
#' Returns the effect of comparison of the two tables. It gets common columns
#' and number of rows of the two tables. In case of type mismatches, 
#' it coerces the weaker type into a stronger type. The output contains 
#' the absolute difference for numerical values and the_same/different for
#' characters.
#'
#' @param x the first data frame
#' @param y the second data frame
#'
#' @return data frame
#' @export
#' @importFrom magrittr %>%
#'
#' @examples
#' x <- data.frame(
#'   a = rep(1, 3),
#'   b = rep(2, 3)
#' )
#' y <- data.frame(
#'   a = rep(2, 3),
#'   b = rep(2, 3)
#' )
#' compare(x, y)

compare <- function(x, y) { 

  if(!inherits(x, "data.frame")) {stop("x must be a data frame.")}
  if(!inherits(y, "data.frame")) {stop("y must be a data frame.")}
  
  # type of columns in tibbles are lists
  if(tibble::is_tibble(x)) x <- as.data.frame(x)
  if(tibble::is_tibble(y)) y <- as.data.frame(y)
  
  tables <- list(x = x, y = y)

  tables <- coerce_to_character(tables) # factors, POSIXct and Dates are not handled
  tables <- get_common_columns(tables)
  tables <- get_common_nr_rows(tables)
  tables <- get_common_types(tables)
  
  x <- tables$x 
  y <- tables$y
  result <- x
  for(j in 1:ncol(x)) {
    if(typeof(x[, j]) == "character") {
      result[, j] <- purrr::map2_chr(x[, j], y[, j], function(c.x, c.y) {
        if(c.x == c.y) "the_same" else "different"
      })
    } else {
      result[, j] <- x[, j] - y[, j]
    }
  }
  
  return(result)
}
