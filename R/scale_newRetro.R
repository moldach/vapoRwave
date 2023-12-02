newRetro_palette <- c(
  "#9239F6",
  "#903495",
  "#6F3460",
  "#4A354F",
  "#D20076",
  "#FF0076",
  "#FF4373",
  "#FF6B58",
  "#F8B660"
)

#' New Retro Colour Palette
#'
#' @description
#' Colour scales inspired by the New Retro vaporwave record label "Live the 80's Dream!"
#' @return A character vector of color hex codes representing the New Retro palette.
#' @importFrom scales manual_pal
#' @export
newRetro_pal <- function() {
  scales::manual_pal(newRetro_palette)
}

#' New Retro Colour and Fill Scales for ggplot2
#'
#' @param ... Additional arguments passed to \code{\link[ggplot2:discrete_scale]{discrete_scale}}
#' @seealso \code{\link[ggplot2:scale_colour_discrete]{scale_colour_discrete()}} and 
#'   \code{\link[ggplot2:scale_fill_discrete]{scale_fill_discrete()}}
#' @importFrom scales manual_pal
#' @importFrom ggplot2 discrete_scale
#' @export
scale_colour_newRetro <- function(...) {
  ggplot2::discrete_scale("colour", "newRetro", newRetro_pal(), ...)
}

#' Scale Color New Retro - Alias for Colour
#'
#' @seealso \code{\link{scale_colour_newRetro}}
#' @rdname scale_colour_newRetro
#' @export
scale_color_newRetro <- scale_colour_newRetro

#' New Retro Fill Scales for ggplot2
#'
#' @inheritParams scale_colour_newRetro
#' @seealso \code{\link{scale_colour_newRetro}}
#' @export
scale_fill_newRetro <- function(...) {
  ggplot2::discrete_scale('fill', 'newRetro', newRetro_pal(), ...)
}