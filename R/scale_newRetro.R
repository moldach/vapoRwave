newRetro_palette <- c(
        "#9239F6"
        ,"#903495"
        ,"#6F3460"
        ,"#4A354F"
        ,"#D20076"
        ,"#FF0076"
        ,"#FF4373"
        ,"#FF6B58"
        ,"#F8B660"
)

#' New Retro Colour and Fill Scales
#' @description
#' Colour scales based on the New Retro vaporwave record label "Live the 80's Dream!"
#'
#' @references https://newretrowave.com/
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name newRetro_pal
#'
#' @return the New Retro palette
#' @export
#'
NULL

newRetro_pal <- function(){
        scales::manual_pal(newRetro_palette)
}

#' @rdname newRetro_pal
#' @export
scale_colour_newRetro <- function(...){
        ggplot2::discrete_scale("colour", "newRetro", newRetro_pal(), ...)
}

#' @rdname newRetro_pal
#' @export
scale_color_newRetro <- scale_colour_newRetro

#' @rdname newRetro_pal
#' @export
scale_fill_newRetro <- function(...){
        ggplot2::discrete_scale('fill', 'newRetro', newRetro_pal(), ...)
}
