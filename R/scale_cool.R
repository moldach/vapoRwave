cool_palette <- c(
        "#94D0FF"
        ,"#8795E8"
        ,"#AD8CFF"
        ,"#C774E8"
        ,"#FF6AD5"
)


#' Cool Colors and palette
#'
#' @export
cool_pal <- function(){
        scales::manual_pal(cool_palette)
}

#' scale_colour_cool
#'
#' @param ... pass me the palette
#'
#' @export
scale_colour_cool <- function(...) {
        ggplot2::discrete_scale("colour", "cool", cool_pal(), ...)
}

scale_color_cool <- scale_colour_cool


#' scale_fill_cool
#'
#' @param ... pass me the palette
#'
#' @export
scale_fill_cool <- function(...) {
        ggplot2::discrete_scale('fill', 'cool', cool_pal(), ...)
}
