macPlus_palette <- c(
  "#65323E",
  "#FE7F9D",
  "#FFC0CB",
  "#75D8D5",
  "#09979B",
  "#063B41"
)

#' Macintosh Plus Colour Palette
#'
#' @description
#' Colour scales inspired by the Macintosh Plus computer released in 1986.
#' @return A character vector of color hex codes representing the Macintosh Plus palette.
#' @importFrom scales manual_pal
#' @export
macPlus_pal <- function() {
  scales::manual_pal(macPlus_palette)
}

#' Macintosh Plus Colour and Fill Scales for ggplot2
#'
#' @param ... Additional arguments passed to \code{\link[ggplot2:discrete_scale]{discrete_scale}}
#' @seealso \code{\link[ggplot2:scale_colour_discrete]{scale_colour_discrete()}} and 
#'   \code{\link[ggplot2:scale_fill_discrete]{scale_fill_discrete()}}
#' @importFrom scales manual_pal
#' @importFrom ggplot2 discrete_scale
#' @export
scale_colour_macPlus <- function(...) {
  ggplot2::discrete_scale("colour", "macPlus", macPlus_pal(), ...)
}

#' Scale Color Macintosh Plus - Alias for Colour
#'
#' @seealso \code{\link{scale_colour_macPlus}}
#' @rdname scale_colour_macPlus
#' @export
scale_color_macPlus <- scale_colour_macPlus

#' Macintosh Plus Fill Scales for ggplot2
#'
#' @inheritParams scale_colour_macPlus
#' @seealso \code{\link{scale_colour_macPlus}}
#' @export
scale_fill_macPlus <- function(...) {
  ggplot2::discrete_scale('fill', 'macPlus', macPlus_pal(), ...)
}
