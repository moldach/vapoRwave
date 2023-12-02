avanti_palette <- c(
  "#9DCFF0",
  "#76BDCF",
  "#CE75AD",
  "#94376C",
  "#FB4142"
)

#' Avanti Colour Palette
#'
#' @return A character vector of color hex codes.
avanti_pal <- function() {
  avanti_palette
}

#' Avanti Colour and Fill Scales for ggplot2
#'
#' @description
#' Avanti Colour and Fill Scales for ggplot2
#'
#' @param ... Additional arguments passed to \code{\link[ggplot2:discrete_scale]{discrete_scale}}
#' @seealso \code{\link[ggplot2:scale_colour_discrete]{scale_colour_discrete()}} and 
#'   \code{\link[ggplot2:scale_fill_discrete]{scale_fill_discrete()}}
#' @importFrom ggplot2 discrete_scale
#' @export
scale_colour_avanti <- function(...) {
  ggplot2::discrete_scale("colour", "avanti", scales::manual_pal(avanti_palette), ...)
}

#' Scale Color Avanti - Alias for Colour
#'
#' @seealso \code{\link{scale_colour_avanti}}
#' @rdname scale_colour_avanti
#' @export
scale_color_avanti <- scale_colour_avanti

#' Avanti Fill Scales for ggplot2
#'
#' @inheritParams scale_colour_avanti
#' @seealso \code{\link{scale_colour_avanti}}
#' @export
scale_fill_avanti <- function(...) {
  ggplot2::discrete_scale('fill', 'avanti', scales::manual_pal(avanti_palette), ...)
}