sunSet_palette <- c(
        "#F9897B"
        ,"#D7509F"
        ,"#F9247E"
        ,"#AE1357"
        ,"#661246"
)


#' Sunset Colour and Fill Scales
#'
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name sunSet_pal
#'
#' @return the Sunset palette
#' @export
#'
NULL

sunSet_pal <- function(){
        scales::manual_pal(sunSet_palette)
}

#' @rdname sunSet_pal
#' @export
scale_colour_sunSet <- function(...) {
        ggplot2::discrete_scale("colour", "sunSet", sunSet_pal(), ...)
}

#' @rdname sunSet_pal
#' @export
scale_color_sunSet <- scale_colour_sunSet


#' @rdname sunSet_pal
#' @export
scale_fill_sunSet <- function(...) {
        ggplot2::discrete_scale('fill', 'sunSet', sunSet_pal(), ...)
}
