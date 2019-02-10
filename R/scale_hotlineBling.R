hotlineBling_palette <- c(
        "#EB4762"
        ,"#D98594"
        ,"#228BDC"
        ,"#D96237"
        ,"#00B19D"
        ,"#8B2E8B"
        ,"#55FFFF"
        ,"#270042"
)

hotlineBling_pal <- function() scales::manual_pal(hotlineBling_palette)

scale_colour_hotlineBling <- function(...) ggplot2::discrete_scale("colour", "hotlineBling", hotlineBling_pal(), ...)

scale_color_hotlineBling <- scale_colour_hotlineBling

scale_fill_hotlineBling <- function(...) ggplot2::discrete_scale('fill', 'hotlineBling', hotlineBling_pal(), ...)
