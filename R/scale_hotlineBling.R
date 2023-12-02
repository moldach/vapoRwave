hotlineBling_palette <- c(
  "#EB4762",
  "#D98594",
  "#228BDC",
  "#D96237",
  "#00B19D",
  "#8B2E8B",
  "#55FFFF",
  "#270042"
)

#' Hotline Bling Colour Palette
#'
#' @return A character vector of color hex codes.
hotlineBling_pal <- function() {
  hotlineBling_palette
}

#' Hotline Bling Colour and Fill Scales for ggplot2
#'
#' @description
#' Colour scales inspired by Drake's "Hotline Bling" music video.
#' @param ... Additional arguments passed to \code{\link[ggplot2:discrete_scale]{discrete_scale}}
#' @seealso \code{\link[ggplot2:scale_colour_discrete]{scale_colour_discrete()}} and 
#'   \code{\link[ggplot2:scale_fill_discrete]{scale_fill_discrete()}}
#' @importFrom scales manual_pal
#' @importFrom ggplot2 discrete_scale
#' @export
scale_colour_hotlineBling <- function(...) {
  ggplot2::discrete_scale("colour", "hotlineBling", scales::manual_pal(hotlineBling_palette), ...)
}

#' Scale Color Hotline Bling - Alias for Colour
#'
#' @seealso \code{\link{scale_colour_hotlineBling}}
#' @rdname scale_colour_hotlineBling
#' @export
scale_color_hotlineBling <- scale_colour_hotlineBling

#' Hotline Bling Fill Scales for ggplot2
#'
#' @inheritParams scale_colour_hotlineBling
#' @seealso \code{\link{scale_colour_hotlineBling}}
#' @export
scale_fill_hotlineBling <- function(...) {
  ggplot2::discrete_scale('fill', 'hotlineBling', scales::manual_pal(hotlineBling_palette), ...)
}