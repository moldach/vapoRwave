jazzCup_palette <- c(
        "#83DDE0"
        ,"#28ADA8"
        ,"#3F86BC"
        ,"#7A3A9A"
        ,"#392682"
)


#' Jazz Cup Colour and Fill Scales
#' @description
#' Colour scales based on the Solo Jazz Pattern on waxed paper cups in the 90's
#'
#' @references https://knowyourmeme.com/memes/solo-jazz-pattern
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name jazzCup_pal
#'
#' @return the avanti palette
#' @export
#'
NULL

jazzCup_pal <- function(){
        scales::manual_pal(jazzCup_palette)
}

#' @rdname jazzCup_pal
#' @export
scale_colour_jazzCup <- function(...) {
        ggplot2::discrete_scale("colour", "jazzCup", jazzCup_pal(), ...)
}

#' @rdname jazzCup_pal
#' @export
scale_color_jazzCup <- scale_colour_jazzCup

#' @rdname jazzCup_pal
#' @export
scale_fill_jazzCup <- function(...) {
        ggplot2::discrete_scale('fill', 'jazzCup', jazzCup_pal(), ...)
}
