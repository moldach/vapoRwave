crystalPepsi_palette <- c(
        "#CCFFFF"
        ,"#E3E8FF"
        ,"#F1DAFF"
        ,"#FFCCFF"
)


#' Crystal Pepsi Colors and palette
#'
#' @export
crystalPepsi_pal <- function(){
        scales::manual_pal(crystalPepsi_palette)
}

#' scale_colour_crystalPepsi
#'
#' @param ... pass me the palette
#'
#' @export
scale_colour_crystalPepsi <- function(...) {
        ggplot2::discrete_scale("colour", "crystalPepsi", crystalPepsi_pal(), ...)
}

scale_color_crystalPepsi <- scale_colour_crystalPepsi


#' scale_fill_crystalPepsi
#'
#' @param ... pass me the palette
#'
#' @export
scale_fill_crystalPepsi <- function(...) {
        ggplot2::discrete_scale('fill', 'crystalPepsi', crystalPepsi_pal(), ...)
}
