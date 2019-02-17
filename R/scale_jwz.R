jwz_palette <- c(
        "#7B556C"
        ,"#86486F"
        ,"#F1956E"
        ,"#EB9B60"
        ,"#864A42"
        ,"#FAD36A"
        ,"#F5FFBF"
        ,"#EFDB9C"
)

#' jwz Colour and Fill Scales
#' @description
#' Colour scales based on the personal blog of computer programmer Jamie Zawinski
#'
#' @references https://www.jwz.org/blog/
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name jwz_pal
#'
#' @return the jwz palette
#' @export
#'
NULL

jwz_pal <- function(){
        scales::manual_pal(jwz_palette)
}

#' @rdname jwz_pal
#' @export
scale_colour_jwz <- function(...){
        ggplot2::discrete_scale("colour", "jwz", jwz_pal(), ...)
}

#' @rdname jwz_pal
#' @export
scale_color_jwz <- scale_colour_jwz

#' @rdname jwz_pal
#' @export
scale_fill_jwz <- function(...){
        ggplot2::discrete_scale('fill', 'jwz', jwz_pal(), ...)
}
