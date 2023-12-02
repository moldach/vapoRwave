mallSoft_palette <- c(
  "#7FD4C1",
  "#30BFDD",
  "#8690FF",
  "#ACD0F4",
  "#F7C0BB",
  "#FBCFF3"
)

#' Mallsoft Colour Palette
#'
#' @description
#' Colour scales inspired by the Mallsoft subgenre of vaporwave music.
#' Mallsoft emphasizes the sense of consumeristic detachment in the ambience of a suburban shopping mall.
#' @return A character vector of color hex codes representing the Mallsoft palette.
#' @importFrom scales manual_pal
#' @export
mallSoft_pal <- function() {
  scales::manual_pal(mallSoft_palette)
}

#' Mallsoft Colour and Fill Scales for ggplot2
#'
#' @param ... Additional arguments passed to \code{\link[ggplot2:discrete_scale]{discrete_scale}}
#' @seealso \code{\link[ggplot2:scale_colour_discrete]{scale_colour_discrete()}} and 
#'   \code{\link[ggplot2:scale_fill_discrete]{scale_fill_discrete()}}
#' @importFrom scales manual_pal
#' @importFrom ggplot2 discrete_scale
#' @export
scale_colour_mallSoft <- function(...) {
  ggplot2::discrete_scale("colour", "mallSoft", mallSoft_pal(), ...)
}

#' Scale Color Mallsoft - Alias for Colour
#'
#' @seealso \code{\link{scale_colour_mallSoft}}
#' @rdname scale_colour_mallSoft
#' @export
scale_color_mallSoft <- scale_colour_mallSoft

#' Mallsoft Fill Scales for ggplot2
#'
#' @inheritParams scale_colour_mallSoft
#' @seealso \code{\link{scale_colour_mallSoft}}
#' @export
scale_fill_mallSoft <- function(...) {
  ggplot2::discrete_scale('fill', 'mallSoft', mallSoft_pal(), ...)
}