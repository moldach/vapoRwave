jazzCup_palette <- c(
  "#83DDE0",
  "#28ADA8",
  "#3F86BC",
  "#7A3A9A",
  "#392682"
)

#' Jazz Cup Colour Palette
#'
#' @description
#' Colour scales inspired by the iconic Solo Jazz pattern found on waxed paper cups in the '90s.
#' @return A character vector of color hex codes representing the Jazz Cup palette.
#' @importFrom scales manual_pal
#' @export
jazzCup_pal <- function() {
  scales::manual_pal(jazzCup_palette)
}

#' Jazz Cup Colour and Fill Scales for ggplot2
#'
#' @param ... Additional arguments passed to \code{\link[ggplot2:discrete_scale]{discrete_scale}}
#' @seealso \code{\link[ggplot2:scale_colour_discrete]{scale_colour_discrete()}} and 
#'   \code{\link[ggplot2:scale_fill_discrete]{scale_fill_discrete()}}
#' @importFrom scales manual_pal
#' @importFrom ggplot2 discrete_scale
#' @export
scale_colour_jazzCup <- function(...) {
  ggplot2::discrete_scale("colour", "jazzCup", jazzCup_pal(), ...)
}

#' Scale Color Jazz Cup - Alias for Colour
#'
#' @seealso \code{\link{scale_colour_jazzCup}}
#' @rdname scale_colour_jazzCup
#' @export
scale_color_jazzCup <- scale_colour_jazzCup

#' Jazz Cup Fill Scales for ggplot2
#'
#' @inheritParams scale_colour_jazzCup
#' @seealso \code{\link{scale_colour_jazzCup}}
#' @export
scale_fill_jazzCup <- function(...) {
  ggplot2::discrete_scale('fill', 'jazzCup', jazzCup_pal(), ...)
}