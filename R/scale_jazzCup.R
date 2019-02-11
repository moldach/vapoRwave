jazzCup_palette <- c(
        "#83DDE0"
        ,"#28ADA8"
        ,"#3F86BC"
        ,"#7A3A9A"
        ,"#392682"
)


#' jazzCup Colors and palette
#'
#' @export
jazzCup_pal <- function(){
        scales::manual_pal(jazzCup_palette)
}

#' scale_colour_jazzCup
#'
#' @param ... pass me the palette
#'
#' @export
scale_colour_jazzCup <- function(...) {
        ggplot2::discrete_scale("colour", "jazzCup", jazzCup_pal(), ...)
}

scale_color_jazzCup <- scale_colour_jazzCup


#' scale_fill_jazzCup
#'
#' @param ... pass me the palette
#'
#' @export
scale_fill_jazzCup <- function(...) {
        ggplot2::discrete_scale('fill', 'jazzCup', jazzCup_pal(), ...)
}
