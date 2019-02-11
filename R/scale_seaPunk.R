seaPunk_palette <- c(
        "#296656"
        ,"#569874"
        ,"#7EC488"
        ,"#A997AB"
        ,"#532E57"
)


#' Seapunk Colors and palette
#'
#' @export
seaPunk_pal <- function(){
        scales::manual_pal(seaPunk_palette)
}

#' scale_colour_seaPunk
#'
#' @param ... pass me the palette
#'
#' @export
scale_colour_seaPunk <- function(...) {
        ggplot2::discrete_scale("colour", "seaPunk", seaPunk_pal(), ...)
}

scale_color_seaPunk <- scale_colour_seaPunk


#' scale_fill_seaPunk
#'
#' @param ... pass me the palette
#'
#' @export
scale_fill_seaPunk <- function(...) {
        ggplot2::discrete_scale('fill', 'seaPunk', seaPunk_pal(), ...)
}
