cool_palette <- c(
  "#94D0FF",
  "#8795E8",
  "#AD8CFF",
  "#C774E8",
  "#FF6AD5"
)

#' Cool Colour Palette
#'
#' @return A character vector of color hex codes.
cool_pal <- function() {
  cool_palette
}

#' Cool Colour and Fill Scales for ggplot2
#'
#' @param ... Additional arguments passed to \code{\link[ggplot2:discrete_scale]{discrete_scale}}
#' @seealso \code{\link[ggplot2:scale_colour_discrete]{scale_colour_discrete()}} and 
#'   \code{\link[ggplot2:scale_fill_discrete]{scale_fill_discrete()}}
#' @importFrom scales manual_pal
#' @importFrom ggplot2 discrete_scale
#' @export
scale_colour_cool <- function(...) {
  ggplot2::discrete_scale("colour", "cool", scales::manual_pal(cool_palette), ...)
}

#' Scale Color Cool - Alias for Colour
#'
#' @seealso \code{\link{scale_colour_cool}}
#' @rdname scale_colour_cool
#' @export
scale_color_cool <- scale_colour_cool

#' Cool Fill Scales for ggplot2
#'
#' @inheritParams scale_colour_cool
#' @seealso \code{\link{scale_colour_cool}}
#' @export
scale_fill_cool <- function(...) {
  ggplot2::discrete_scale('fill', 'cool', scales::manual_pal(cool_palette), ...)
}