sunSet_palette <- c(
  "#F9897B",
  "#D7509F",
  "#F9247E",
  "#AE1357",
  "#661246"
)

#' Sunset Colour Palette
#'
#' @description
#' Colour scales inspired by the vibrant hues of a sunset.
#' @return A character vector of color hex codes representing the Sunset palette.
#' @importFrom scales manual_pal
#' @export
sunSet_pal <- function() {
  scales::manual_pal(sunSet_palette)
}

#' Sunset Colour and Fill Scales for ggplot2
#'
#' @param ... Additional arguments passed to \code{\link[ggplot2:discrete_scale]{discrete_scale}}
#' @seealso \code{\link[ggplot2:scale_colour_discrete]{scale_colour_discrete()}} and 
#'   \code{\link[ggplot2:scale_fill_discrete]{scale_fill_discrete()}}
#' @importFrom scales manual_pal
#' @importFrom ggplot2 discrete_scale
#' @export
scale_colour_sunSet <- function(...) {
  ggplot2::discrete_scale("colour", "sunSet", sunSet_pal(), ...)
}

#' Scale Color Sunset - Alias for Colour
#'
#' @seealso \code{\link{scale_colour_sunSet}}
#' @rdname scale_colour_sunSet
#' @export
scale_color_sunSet <- scale_colour_sunSet

#' Sunset Fill Scales for ggplot2
#'
#' @inheritParams scale_colour_sunSet
#' @seealso \code{\link{scale_colour_sunSet}}
#' @export
scale_fill_sunSet <- function(...) {
  ggplot2::discrete_scale('fill', 'sunSet', sunSet_pal(), ...)
}