jwz_palette <- c(
  "#7B556C",
  "#86486F",
  "#F1956E",
  "#EB9B60",
  "#864A42",
  "#FAD36A",
  "#F5FFBF",
  "#EFDB9C"
)

#' jwz Colour Palette
#'
#' @description
#' Colour scales inspired by the personal blog of computer programmer Jamie Zawinski.
#' @return A character vector of color hex codes representing the jwz palette.
#' @importFrom scales manual_pal
#' @export
jwz_pal <- function() {
  scales::manual_pal(jwz_palette)
}

#' jwz Colour and Fill Scales for ggplot2
#'
#' @param ... Additional arguments passed to \code{\link[ggplot2:discrete_scale]{discrete_scale}}
#' @seealso \code{\link[ggplot2:scale_colour_discrete]{scale_colour_discrete()}} and 
#'   \code{\link[ggplot2:scale_fill_discrete]{scale_fill_discrete()}}
#' @importFrom scales manual_pal
#' @importFrom ggplot2 discrete_scale
#' @export
scale_colour_jwz <- function(...) {
  ggplot2::discrete_scale("colour", "jwz", jwz_pal(), ...)
}

#' Scale Color jwz - Alias for Colour
#'
#' @seealso \code{\link{scale_colour_jwz}}
#' @rdname scale_colour_jwz
#' @export
scale_color_jwz <- scale_colour_jwz

#' jwz Fill Scales for ggplot2
#'
#' @inheritParams scale_colour_jwz
#' @seealso \code{\link{scale_colour_jwz}}
#' @export
scale_fill_jwz <- function(...) {
  ggplot2::discrete_scale('fill', 'jwz', jwz_pal(), ...)
}