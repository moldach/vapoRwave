seaPunk_palette <- c(
  "#296656",
  "#569874",
  "#7EC488",
  "#A997AB",
  "#532E57"
)

#' Seapunk Colour Palette
#'
#' @description
#' Colour scales inspired by the Seapunk subculture that emerged on Tumblr in 2011,
#' characterized by aquatic-themed fashion, 3D net art, and 90s pop culture references.
#' @return A character vector of color hex codes representing the Seapunk palette.
#' @importFrom scales manual_pal
#' @export
seaPunk_pal <- function() {
  scales::manual_pal(seaPunk_palette)
}

#' Seapunk Colour and Fill Scales for ggplot2
#'
#' @param ... Additional arguments passed to \code{\link[ggplot2:discrete_scale]{discrete_scale}}
#' @seealso \code{\link[ggplot2:scale_colour_discrete]{scale_colour_discrete()}} and 
#'   \code{\link[ggplot2:scale_fill_discrete]{scale_fill_discrete()}}
#' @importFrom scales manual_pal
#' @importFrom ggplot2 discrete_scale
#' @export
scale_colour_seaPunk <- function(...) {
  ggplot2::discrete_scale("colour", "seaPunk", seaPunk_pal(), ...)
}

#' Scale Color Seapunk - Alias for Colour
#'
#' @seealso \code{\link{scale_colour_seaPunk}}
#' @rdname scale_colour_seaPunk
#' @export
scale_color_seaPunk <- scale_colour_seaPunk

#' Seapunk Fill Scales for ggplot2
#'
#' @inheritParams scale_colour_seaPunk
#' @seealso \code{\link{scale_colour_seaPunk}}
#' @export
scale_fill_seaPunk <- function(...) {
  ggplot2::discrete_scale('fill', 'seaPunk', seaPunk_pal(), ...)
}