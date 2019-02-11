sunSet_palette <- c(
        "#F9897B"
        ,"#D7509F"
        ,"#F9247E"
        ,"#AE1357"
        ,"#661246"
)


#' sunSet Colors and palette
#'
#' @export
sunSet_pal <- function(){
        scales::manual_pal(sunSet_palette)
}

#' scale_colour_sunSet
#'
#' @param ... pass me the palette
#'
#' @export
scale_colour_sunSet <- function(...) {
        ggplot2::discrete_scale("colour", "sunSet", sunSet_pal(), ...)
}

scale_color_sunSet <- scale_colour_sunSet


#' scale_fill_sunSet
#'
#' @param ... pass me the palette
#'
#' @export
scale_fill_sunSet <- function(...) {
        ggplot2::discrete_scale('fill', 'sunSet', sunSet_pal(), ...)
}
