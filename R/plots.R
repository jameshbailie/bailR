#' Plot a density function with ggplot
#' 
#' @param densFn (Vectorised) function which returns density
#' @param min,max The min and max values for the x-axis
#' @param numPoints The number of points to plot
#' @export
plotDensity <- function(densFn, min, max, numPoints) {
  x <- seq(min, max, numPoints)
  dens <- densFn(x)
  ggplot(data = tibble(x = x, dens = dens), aes(x=x, y=dens)) +
    geom_line() + 
    theme_minimal() +
    labs(y = "Density")
}