cool_palette <- c(
        "#94D0FF"
        ,"#8795E8"
        ,"#AD8CFF"
        ,"#C774E8"
        ,"#FF6AD5"
)

#' Cool Colour and Fill Scales
#'
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name scale_cool
#'
#' @return the cool palette
#' @export
cool_pal <- function(){
        scales::manual_pal(cool_palette)
}

#' @rdname scale_cool
#' @export
scale_colour_cool <- function(...) {
        ggplot2::discrete_scale("colour", "cool", cool_pal(), ...)
}

#' @rdname scale_cool
#' @export
scale_color_cool <- function(){
        scale_colour_cool
}

#' @rdname scale_cool
#' @export
scale_fill_cool <- function(...) {
        ggplot2::discrete_scale('fill', 'cool', cool_pal(), ...)
}
