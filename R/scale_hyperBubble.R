hyperBubble_palette <- c(
  "#852942",
  "#FA41CA",
  "#F599A6",
  "#ECE976",
  "#44B05B",
  "#96BDE4",
  "#792096"
)

#' Hyper Bubble Colour Palette
#'
#' @return A character vector of color hex codes.
hyperBubble_pal <- function() {
  hyperBubble_palette
}

#' Hyper Bubble Colour and Fill Scales for ggplot2
#'
#' @description
#' Colour scales inspired by the vibrant and dynamic aesthetics of hyperpop music.
#' @param ... Additional arguments passed to \code{\link[ggplot2:discrete_scale]{discrete_scale}}
#' @seealso \code{\link[ggplot2:scale_colour_discrete]{scale_colour_discrete()}} and 
#'   \code{\link[ggplot2:scale_fill_discrete]{scale_fill_discrete()}}
#' @importFrom scales manual_pal
#' @importFrom ggplot2 discrete_scale
#' @export
scale_colour_hyperBubble <- function(...) {
  ggplot2::discrete_scale("colour", "hyperBubble", scales::manual_pal(hyperBubble_palette), ...)
}

#' Scale Color Hyper Bubble - Alias for Colour
#'
#' @seealso \code{\link{scale_colour_hyperBubble}}
#' @rdname scale_colour_hyperBubble
#' @export
scale_color_hyperBubble <- scale_colour_hyperBubble

#' Hyper Bubble Fill Scales for ggplot2
#'
#' @inheritParams scale_colour_hyperBubble
#' @seealso \code{\link{scale_colour_hyperBubble}}
#' @export
scale_fill_hyperBubble <- function(...) {
  ggplot2::discrete_scale('fill', 'hyperBubble', scales::manual_pal(hyperBubble_palette), ...)
}