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

#' Hotline Bling Color and Fill Scales
#'
#' Based on Drake's Hotline bling; .
#'
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2::scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name scale_hotlineBling
NULL

hotlineBling_pal <- function() scales::manual_pal(hotlineBling_palette)

#' @rdname scale_hotlineBling
#' @export
scale_colour_hotlineBling <- function(...) ggplot2::discrete_scale("colour", "hotlineBling", hotlineBling_pal(), ...)

#' @rdname scale_hotlineBling
#' @export
scale_color_hotlineBling <- scale_colour_hotlineBling

#' @rdname scale_hotlineBling
#' @export
scale_fill_hotlineBling <- function(...) ggplot2::discrete_scale('fill', 'hotlineBling', hotlineBling_pal(), ...)
