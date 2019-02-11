macPlus_palette <- c(
        "#65323E"
        ,"#FE7F9D"
        ,"#FFC0CB"
        ,"#75D8D5"
        ,"#09979B"
        ,"#063B41"
)


#' macPlus Colors and palette
#'
#' @export
macPlus_pal <- function(){
        scales::manual_pal(macPlus_palette)
}

#' scale_colour_macPlus
#'
#' @param ... pass me the palette
#'
#' @export
scale_colour_macPlus <- function(...) {
        ggplot2::discrete_scale("colour", "macPlus", macPlus_pal(), ...)
}

scale_color_macPlus <- scale_colour_macPlus


#' scale_fill_macPlus
#'
#' @param ... pass me the palette
#'
#' @export
scale_fill_macPlus <- function(...) {
        ggplot2::discrete_scale('fill', 'macPlus', macPlus_pal(), ...)
}
