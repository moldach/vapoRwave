floralShoppe_palette <- c(
  "#394648",
  "#79ADDC",
  "#E0BAD7",
  "#CC7E85",
  "#FAA275",
  "#FFE2D1",
  "#E3D26F",
  "#FAEFAF"
)

#' Floral Shoppe Colour Palette
#'
#' @return A character vector of color hex codes.
floralShoppe_pal <- function() {
  floralShoppe_palette
}

#' Floral Shoppe Colour and Fill Scales for ggplot2
#'
#' @description
#' Colour scales based on the Floral Shoppe album cover by Macintosh Plus.
#' @param ... Additional arguments passed to \code{\link[ggplot2:discrete_scale]{discrete_scale}}
#' @seealso \code{\link[ggplot2:scale_colour_discrete]{scale_colour_discrete()}} and 
#'   \code{\link[ggplot2:scale_fill_discrete]{scale_fill_discrete()}}
#' @importFrom scales manual_pal
#' @importFrom ggplot2 discrete_scale
#' @export
scale_colour_floralShoppe <- function(...) {
  ggplot2::discrete_scale("colour", "floralShoppe", scales::manual_pal(floralShoppe_palette), ...)
}

#' Scale Color Floral Shoppe - Alias for Colour
#'
#' @seealso \code{\link{scale_colour_floralShoppe}}
#' @rdname scale_colour_floralShoppe
#' @export
scale_color_floralShoppe <- scale_colour_floralShoppe

#' Floral Shoppe Fill Scales for ggplot2
#'
#' @inheritParams scale_colour_floralShoppe
#' @seealso \code{\link{scale_colour_floralShoppe}}
#' @export
scale_fill_floralShoppe <- function(...) {
  ggplot2::discrete_scale('fill', 'floralShoppe', scales::manual_pal(floralShoppe_palette), ...)
}