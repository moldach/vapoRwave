macPlus_palette <- c(
        "#65323E"
        ,"#FE7F9D"
        ,"#FFC0CB"
        ,"#75D8D5"
        ,"#09979B"
        ,"#063B41"
)


#' Macintosh Plus Colour and Fill Scales
#' @description
#' Colour scales as tribute to the Machintosh Plus released in 1986
#'
#' @references https://en.wikipedia.org/wiki/Macintosh_Plus
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name macPlus_pal
#'
#' @return the Machintosh Plus palette
#' @export
#'
NULL

macPlus_pal <- function(){
        scales::manual_pal(macPlus_palette)
}

#' @rdname macPlus_pal
#' @export
scale_colour_macPlus <- function(...) {
        ggplot2::discrete_scale("colour", "macPlus", macPlus_pal(), ...)
}

#' @rdname macPlus_pal
#' @export
scale_color_macPlus <- scale_colour_macPlus


#' @rdname macPlus_pal
#' @export
scale_fill_macPlus <- function(...) {
        ggplot2::discrete_scale('fill', 'macPlus', macPlus_pal(), ...)
}
