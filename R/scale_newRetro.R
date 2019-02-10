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

#' New Retro Color and Fill Scales
#'
#' Based on the New Retro record label.
#'
#' @references https://newretrowave.com/
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2::scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name scale_newRetro
NULL
newRetro_pal <- function() scales::manual_pal(newRetro_palette)

#' @rdname scale_newRetro
#' @export
scale_colour_newRetro <- function(...) ggplot2::discrete_scale("colour", "newRetro", newRetro_pal(), ...)

#' @rdname scale_newRetro
#' @export
scale_color_newRetro <- scale_colour_newRetro

#' @rdname scale_newRetro
#' @export
scale_fill_newRetro <- function(...) ggplot2::discrete_scale('fill', 'newRetro', newRetro_pal(), ...)
