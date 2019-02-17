vapoRwave_palette <- c(
        "#20DE8B"
        ,"#CCDE8B"
        ,"#FFDE8B"
        ,"#FFA88B"
        ,"#FF6A8B"
        ,"#FF6AD5"
        ,"#C874AA"
        ,"#C774E7"
        ,"#AD8CFF"
        ,"#966BFF"
        ,"#90CFFF"
)


#' VapoRwave Colour and Fill Scales
#'
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name vapoRwave_pal
#'
#' @return the vapoRwave palette
#' @export
#'
NULL

vapoRwave_pal <- function(){
        scales::manual_pal(vapoRwave_palette)
}

#' @rdname vapoRwave_pal
#' @export
scale_colour_vapoRwave <- function(...) {
        ggplot2::discrete_scale("colour", "vapoRwave", vapoRwave_pal(), ...)
}

#' @rdname vapoRwave_pal
#' @export
scale_color_vapoRwave <- scale_colour_vapoRwave


#' @rdname vapoRwave_pal
#' @export
scale_fill_vapoRwave <- function(...) {
        ggplot2::discrete_scale('fill', 'vapoRwave', vapoRwave_pal(), ...)
}
