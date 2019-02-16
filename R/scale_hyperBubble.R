hyperBubble_palette <- c(
        "#852942"
        ,"#FA41CA"
        ,"#F599A6"
        ,"#ECE976"
        ,"#44B05B"
        ,"#96BDE4"
        ,"#792096"

)

#' Hyper Bubble Colour and Fill Scales
#'
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name hyperBubble_pal
#'
#' @return the Hyper Bubble palette
#' @export
#'
NULL
hyperBubble_pal <- function(){
        scales::manual_pal(hyperBubble_palette)
}

#' @rdname hyperBubble_pal
#' @export
scale_colour_hyperBubble <- function(...){
        ggplot2::discrete_scale("colour", "hyperBubble", hyperBubble_pal(), ...)
}

#' @rdname hyperBubble_pal
#' @export
scale_color_hyperBubble <- scale_colour_hyperBubble

#' @rdname hyperBubble_pal
#' @export
scale_fill_hyperBubble <- function(...){
        ggplot2::discrete_scale('fill', 'hyperBubble', hyperBubble_pal(), ...)
}
