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

#' newRetro_pal
#'
#' @export
newRetro_pal <- function(){
        scales::manual_pal(newRetro_palette)
}

#' scale_colour_newRetro
#'
#' @param ... pass me the palette
#'
#' @export
scale_colour_newRetro <- function(...){
        ggplot2::discrete_scale("colour", "newRetro", newRetro_pal(), ...)
}

scale_color_newRetro <- scale_colour_newRetro

#' scale_fill_newRetro
#'
#' @param ... pass me the palette
#'
#' @export
scale_fill_newRetro <- function(...){
        ggplot2::discrete_scale('fill', 'newRetro', newRetro_pal(), ...)
}
