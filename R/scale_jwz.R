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

#' jwz_pal
#'
#' @export
jwz_pal <- function(){
        scales::manual_pal(jwz_palette)
}

#' scale_colour_jwz
#'
#' @param ... pass me the palette
#'
#' @export
scale_colour_jwz <- function(...){
        ggplot2::discrete_scale("colour", "jwz", jwz_pal(), ...)
}

scale_color_jwz <- scale_colour_jwz

#' scale_fill_jwz
#'
#' @param ... pass me the palette
#'
#' @export
scale_fill_jwz <- function(...){
        ggplot2::discrete_scale('fill', 'jwz', jwz_pal(), ...)
}
