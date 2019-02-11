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


#' VapoRwave Colors and palette
#'
#' @export
vapoRwave_pal <- function(){
        scales::manual_pal(vapoRwave_palette)
}

#' scale_colour_vapoRwave
#'
#' @param ... pass me the palette
#'
#' @export
scale_colour_vapoRwave <- function(...) {
        ggplot2::discrete_scale("colour", "vapoRwave", vapoRwave_pal(), ...)
}

scale_color_vapoRwave <- scale_colour_vapoRwave


#' scale_fill_vapoRwave
#'
#' @param ... pass me the palette
#'
#' @export
scale_fill_vapoRwave <- function(...) {
        ggplot2::discrete_scale('fill', 'vapoRwave', vapoRwave_pal(), ...)
}
