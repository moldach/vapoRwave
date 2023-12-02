vapoRwave_palette <- c(
  "#20DE8B",
  "#CCDE8B",
  "#FFDE8B",
  "#FFA88B",
  "#FF6A8B",
  "#FF6AD5",
  "#C874AA",
  "#C774E7",
  "#AD8CFF",
  "#966BFF",
  "#90CFFF"
)

#' VapoRwave Colour Palette
#'
#' @description
#' Colour scales inspired by the vapoRwave aesthetic.
#' @return A character vector of color hex codes representing the vapoRwave palette.
#' @importFrom scales manual_pal
#' @export
vapoRwave_pal <- function() {
  scales::manual_pal(vapoRwave_palette)
}

#' VapoRwave Colour and Fill Scales for ggplot2
#'
#' @param ... Additional arguments passed to \code{\link[ggplot2:discrete_scale]{discrete_scale}}
#' @seealso \code{\link[ggplot2:scale_colour_discrete]{scale_colour_discrete()}} and 
#'   \code{\link[ggplot2:scale_fill_discrete]{scale_fill_discrete()}}
#' @importFrom scales manual_pal
#' @importFrom ggplot2 discrete_scale
#' @export
scale_colour_vapoRwave <- function(...) {
  ggplot2::discrete_scale("colour", "vapoRwave", vapoRwave_pal(), ...)
}

#' Scale Color VapoRwave - Alias for Colour
#'
#' @seealso \code{\link{scale_colour_vapoRwave}}
#' @rdname scale_colour_vapoRwave
#' @export
scale_color_vapoRwave <- scale_colour_vapoRwave

#' VapoRwave Fill Scales for ggplot2
#'
#' @inheritParams scale_colour_vapoRwave
#' @seealso \code{\link{scale_colour_vapoRwave}}
#' @export
scale_fill_vapoRwave <- function(...) {
  ggplot2::discrete_scale('fill', 'vapoRwave', vapoRwave_pal(), ...)
}