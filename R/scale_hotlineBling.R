hotlineBling_palette <- c(
        "#EB4762"
        ,"#D98594"
        ,"#228BDC"
        ,"#D96237"
        ,"#00B19D"
        ,"#8B2E8B"
        ,"#55FFFF"
        ,"#270042"
)

#' Hotline Bling Colour and Fill Scales
#' @description
#' Colour scales based on the Drake's Hotline Bling
#'
#' @references https://www.youtube.com/watch?v=uxpDa-c-4Mc
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name hotlineBling_pal
#'
#' @return the Hotline Bling palette
#' @export
#'
NULL

hotlineBling_pal <- function() {
        scales::manual_pal(hotlineBling_palette)
}

#' @rdname hotlineBling_pal
#' @export
scale_colour_hotlineBling <- function(...){
        ggplot2::discrete_scale("colour", "hotlineBling", hotlineBling_pal(), ...)
}

#' @rdname hotlineBling_pal
#' @export
scale_color_hotlineBling <- scale_colour_hotlineBling

#' @rdname hotlineBling_pal
#' @export
scale_fill_hotlineBling <- function(...){
        ggplot2::discrete_scale('fill', 'hotlineBling', hotlineBling_pal(), ...)
}
