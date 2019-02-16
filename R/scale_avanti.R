avanti_palette <- c(
        "#9DCFF0"
        ,"#76BDCF"
        ,"#CE75AD"
        ,"#94376C"
        ,"#FB4142"
)



#' Avanti Colour and Fill Scales
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name avanti_pal
#'
#' @return the avanti palette
#' @export
#'
NULL

avanti_pal <- function(){
        scales::manual_pal(avanti_palette)
}


#' @rdname avanti_pal
#' @export
scale_colour_avanti <- function(...) {
        ggplot2::discrete_scale("colour", "avanti", avanti_pal(), ...)
}

#' @rdname avanti_pal
#' @export
scale_color_avanti <- function(){
        scale_colour_avanti
}


#' @rdname avanti_pal
#' @export
scale_fill_avanti <- function(...) {
        ggplot2::discrete_scale('fill', 'avanti', avanti_pal(), ...)
}
