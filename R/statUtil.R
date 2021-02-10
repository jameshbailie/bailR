#' Mean of the Beta distribution
#' 
#' This function computes the mean of a Beta random variable
#' with parameters alpha and beta.
#' 
#' @param alpha Non-negative scalar 
#' @param beta Non-negative scalar
#' @export
meanBeta <- function(alpha, beta) {
  alpha/(alpha+beta)
}

#' Variance of the Beta distribution
#' 
#' This function computes the variance of a Beta random variable
#' with parameters alpha and beta.
#' 
#' @param alpha Non-negative scalar 
#' @param beta Non-negative scalar
#' @export
varBeta <- function(alpha, beta) {
  alpha*beta/( (alpha+beta)**2*(alpha + beta + 1) )
}