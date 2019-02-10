floralShoppe_palette <- c(
        "#394648"
        ,"#79ADDC"
        ,"#E0BAD7"
        ,"#CC7E85"
        ,"#FAA275"
        ,"#FFE2D1"
        ,"#E3D26F"
        ,"#FAEFAF"
)

#' Floral Shoppe Color and Fill Scales
#'
#' Based on the Macintosh Plus's Floral Shoppe Album Cover.
#'
#' @references https://beerontherug.bandcamp.com/album/floral-shoppe
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2::scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name scale_floralShoppe
NULL

floralShoppe_pal <- function() scales::manual_pal(floralShoppe_palette)

#' @rdname scale_floralShoppe
#' @export
scale_colour_floralShoppe <- function(...) ggplot2::discrete_scale("colour", "floralShoppe", floralShoppe_pal(), ...)

#' @rdname scale_floralShoppe
#' @export
scale_color_floralShoppe <- scale_colour_floralShoppe

#' @rdname scale_floralShoppe
#' @export
scale_fill_floralShoppe <- function(...) ggplot2::discrete_scale('fill', 'floralShoppe', floralShoppe_pal(), ...)
