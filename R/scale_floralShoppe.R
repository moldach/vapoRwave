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


#' Floral Shoppe Colour and Fill Scales
#' @description
#' Colour scales based on the Floral Shoppe Album cover by Macplus
#'
#' @references https://beerontherug.bandcamp.com/album/floral-shoppe
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name floralShoppe_pal
#'
#' @return the Floral Shoppe palette
#' @export
#'
NULL

floralShoppe_pal <- function(){
        scales::manual_pal(floralShoppe_palette)
}

#' @rdname floralShoppe_pal
#' @export
scale_colour_floralShoppe <- function(...) {
        ggplot2::discrete_scale("colour", "floralShoppe", floralShoppe_pal(), ...)
}

#' @rdname floralShoppe_pal
#' @export
scale_color_floralShoppe <- scale_colour_floralShoppe

#' @rdname floralShoppe_pal
#' @export
scale_fill_floralShoppe <- function(...) {
        ggplot2::discrete_scale('fill', 'floralShoppe', floralShoppe_pal(), ...)
}
