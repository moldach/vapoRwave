crystalPepsi_palette <- c(
  "#CCFFFF",
  "#E3E8FF",
  "#F1DAFF",
  "#FFCCFF"
)

#' Crystal Pepsi Colour Palette
#'
#' @return A character vector of color hex codes.
crystalPepsi_pal <- function() {
  crystalPepsi_palette
}

#' Crystal Pepsi Colour and Fill Scales for ggplot2
#'
#' @description
#' Colour scales based on the Crystal Pepsi craze of the early 1990's.
#' @param ... Additional arguments passed to \code{\link[ggplot2:discrete_scale]{discrete_scale}}
#' @seealso \code{\link[ggplot2:scale_colour_discrete]{scale_colour_discrete()}} and 
#'   \code{\link[ggplot2:scale_fill_discrete]{scale_fill_discrete()}}
#' @importFrom scales manual_pal
#' @importFrom ggplot2 discrete_scale
#' @export
scale_colour_crystalPepsi <- function(...) {
  ggplot2::discrete_scale("colour", "crystalPepsi", scales::manual_pal(crystalPepsi_palette), ...)
}

#' Scale Color Crystal Pepsi - Alias for Colour
#'
#' @seealso \code{\link{scale_colour_crystalPepsi}}
#' @rdname scale_colour_crystalPepsi
#' @export
scale_color_crystalPepsi <- scale_colour_crystalPepsi

#' Crystal Pepsi Fill Scales for ggplot2
#'
#' @inheritParams scale_colour_crystalPepsi
#' @seealso \code{\link{scale_colour_crystalPepsi}}
#' @export
scale_fill_crystalPepsi <- function(...) {
  ggplot2::discrete_scale('fill', 'crystalPepsi', scales::manual_pal(crystalPepsi_palette), ...)
}