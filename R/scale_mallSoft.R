mallSoft_palette <- c(
        "#7FD4C1"
        ,"#30BFDD"
        ,"#8690FF"
        ,"#ACD0F4"
        ,"#F7C0BB"
        ,"#FBCFF3"
)


#' Mallsoft Colour and Fill Scales
#'
#' Colour scales based on the Mallsoft vaporwave genre
#' @description
#' Mallsoft takes classic vaporwave’s interest in consumeristic detachment
#' and uses it as the thematic basis for spacious ambient music
#' in the imagined space of the suburban shopping mall
#'
#' @references https://indie88.com/mallsoft/
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name mallSoft_pal
#'
#' @return the Mallsoft palette
#' @export
#'
NULL

mallSoft_pal <- function(){
        scales::manual_pal(mallSoft_palette)
}

#' @rdname mallSoft_pal
#' @export
scale_colour_mallSoft <- function(...) {
        ggplot2::discrete_scale("colour", "mallSoft", mallSoft_pal(), ...)
}

#' @rdname mallSoft_pal
#' @export
scale_color_mallSoft <- scale_colour_mallSoft


#' @rdname mallSoft_pal
#' @export
scale_fill_mallSoft <- function(...) {
        ggplot2::discrete_scale('fill', 'mallSoft', mallSoft_pal(), ...)
}
