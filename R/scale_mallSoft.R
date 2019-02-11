mallSoft_palette <- c(
        "#7FD4C1"
        ,"#30BFDD"
        ,"#8690FF"
        ,"#ACD0F4"
        ,"#F7C0BB"
        ,"#FBCFF3"
)


#' mallSoft Colors and palette
#'
#' @export
mallSoft_pal <- function(){
        scales::manual_pal(mallSoft_palette)
}

#' scale_colour_mallSoft
#'
#' @param ... pass me the palette
#'
#' @export
scale_colour_mallSoft <- function(...) {
        ggplot2::discrete_scale("colour", "mallSoft", mallSoft_pal(), ...)
}

scale_color_mallSoft <- scale_colour_mallSoft


#' scale_fill_mallSoft
#'
#' @param ... pass me the palette
#'
#' @export
scale_fill_mallSoft <- function(...) {
        ggplot2::discrete_scale('fill', 'mallSoft', mallSoft_pal(), ...)
}
