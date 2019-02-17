seaPunk_palette <- c(
        "#296656"
        ,"#569874"
        ,"#7EC488"
        ,"#A997AB"
        ,"#532E57"
)


#' Seapunk Colour and Fill Scales
#' @description
#' Colour scales based on the Seapunk subculture from Tumblr in 2011
#' It is often associated with an aquatic-themed style of fashion,
#' 3D net art, iconography, and allusions to popular culture of the 1990s.
#'
#' @references https://en.wikipedia.org/wiki/Seapunk
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name seaPunk_pal
#'
#' @return the Sea Punk palette
#' @export
#'
NULL

seaPunk_pal <- function(){
        scales::manual_pal(seaPunk_palette)
}

#' @rdname seaPunk_pal
#' @export
scale_colour_seaPunk <- function(...) {
        ggplot2::discrete_scale("colour", "seaPunk", seaPunk_pal(), ...)
}

#' @rdname seaPunk_pal
#' @export
scale_color_seaPunk <- scale_colour_seaPunk

#' @rdname seaPunk_pal
#' @export
scale_fill_seaPunk <- function(...) {
        ggplot2::discrete_scale('fill', 'seaPunk', seaPunk_pal(), ...)
}
