hyperBubble_palette <- c(
        "#852942"
        ,"#FA41CA"
        ,"#F599A6"
        ,"#ECE976"
        ,"#44B05B"
        ,"#96BDE4"
        ,"#792096"

)

#' Hyperbubble Color and Fill Scales
#'
#' Based on the song Mom Dad Unit by Hyperbubble because I thought the guy looks like John C. Reilly; .
#'
#' @references https://www.youtube.com/watch?v=YVUnf-sNAcc
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2::scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name scale_hyperBubble
NULL
hyperBubble_pal <- function() scales::manual_pal(hyperBubble_palette)

#' @rdname scale_hyperBubble
#' @export
scale_colour_hyperBubble <- function(...) ggplot2::discrete_scale("colour", "hyperBubble", hyperBubble_pal(), ...)

#' @rdname scale_hyperBubble
#' @export
scale_color_hyperBubble <- scale_colour_hyperBubble

#' @rdname scale_hyperBubble
#' @export
scale_fill_hyperBubble <- function(...) ggplot2::discrete_scale('fill', 'hyperBubble', hyperBubble_pal(), ...)
