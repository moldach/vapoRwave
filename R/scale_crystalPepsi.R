crystalPepsi_palette <- c(
        "#CCFFFF"
        ,"#E3E8FF"
        ,"#F1DAFF"
        ,"#FFCCFF"
)


#' crystalPepsi palette
#'
#' @return the crystalPepsi palette
#' @export
#'
crystalPepsi_pal <- function(){
        scales::manual_pal(crystalPepsi_palette)
}

#' crystalPepsi colour
#'
#' @param ... pass the palette
#'
#' @return crystalPepsi colour
#' @export
#'
scale_colour_crystalPepsi <- function(...) {
        ggplot2::discrete_scale("colour", "crystalPepsi", crystalPepsi_pal(), ...)
}

#' crystalPepsi color
#'
#' @return crystalPepsi colour
#' @export
#'
scale_color_crystalPepsi <- function() {
        scale_colour_crystalPepsi
}

#' crystalPepsi fill
#'
#' @param ... pass the palette
#'
#' @return
#' @export
#'
scale_fill_crystalPepsi <- function(...) {
        ggplot2::discrete_scale('fill', 'crystalPepsi', crystalPepsi_pal(), ...)
}
