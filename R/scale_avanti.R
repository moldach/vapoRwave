avanti_palette <- c(
        "#9DCFF0"
        ,"#76BDCF"
        ,"#CE75AD"
        ,"#94376C"
        ,"#FB4142"
)


#' Avanti Colors and palette
#'
#' @export
avanti_pal <- function(){
        scales::manual_pal(avanti_palette)
}

#' scale_colour_avanti
#'
#' @param ... pass me the palette
#'
#' @export
scale_colour_avanti <- function(...) {
        ggplot2::discrete_scale("colour", "avanti", avanti_pal(), ...)
}

scale_color_avanti <- scale_colour_avanti


#' scale_fill_avanti
#'
#' @param ... pass me the palette
#'
#' @export
scale_fill_avanti <- function(...) {
        ggplot2::discrete_scale('fill', 'avanti', avanti_pal(), ...)
}
