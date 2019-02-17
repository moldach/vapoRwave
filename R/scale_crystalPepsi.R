crystalPepsi_palette <- c(
        "#CCFFFF"
        ,"#E3E8FF"
        ,"#F1DAFF"
        ,"#FFCCFF"
)


#' Crystal Pepsi Colour and Fill Scales
#' @description
#' Colour scales based on the Crystal Pepsi craze of the early 1990's
#'
#' @references https://en.wikipedia.org/wiki/Crystal_Pepsi
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name crystalPepsi_pal
#'
#' @return the Crystal Pepsi palette
#' @export
#'
NULL

crystalPepsi_pal <- function(){
        scales::manual_pal(crystalPepsi_palette)
}

#' @rdname crystalPepsi_pal
#' @export
scale_colour_crystalPepsi <- function(...) {
        ggplot2::discrete_scale("colour", "crystalPepsi", crystalPepsi_pal(), ...)
}

#' @rdname crystalPepsi_pal
#' @export
scale_color_crystalPepsi <- function() {
        scale_colour_crystalPepsi
}

#' @rdname crystalPepsi_pal
#' @export
scale_fill_crystalPepsi <- function(...) {
        ggplot2::discrete_scale('fill', 'crystalPepsi', crystalPepsi_pal(), ...)
}
