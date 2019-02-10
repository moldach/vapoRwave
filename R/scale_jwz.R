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

#' jwz Bling Color and Fill Scales
#'
#' Based on jwz's blog.
#'
#' @references https://www.jwz.org/blog/
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2::scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name scale_jwz
NULL
jwz_pal <- function() scales::manual_pal(jwz_palette)

#' @rdname scale_jwz
#' @export
scale_colour_jwz <- function(...) ggplot2::discrete_scale("colour", "jwz", jwz_pal(), ...)

#' @rdname scale_jwz
#' @export
scale_color_jwz <- scale_colour_jwz

#' @rdname scale_jwz
#' @export
scale_fill_jwz <- function(...) ggplot2::discrete_scale('fill', 'jwz', jwz_pal(), ...)
