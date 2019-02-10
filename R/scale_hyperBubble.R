hyperBubble_palette <- c(
        "#852942"
        ,"#FA41CA"
        ,"#F599A6"
        ,"#ECE976"
        ,"#44B05B"
        ,"#96BDE4"
        ,"#792096"

)

hyperBubble_pal <- function() scales::manual_pal(hyperBubble_palette)

scale_colour_hyperBubble <- function(...) ggplot2::discrete_scale("colour", "hyperBubble", hyperBubble_pal(), ...)

scale_color_hyperBubble <- scale_colour_hyperBubble

scale_fill_hyperBubble <- function(...) ggplot2::discrete_scale('fill', 'hyperBubble', hyperBubble_pal(), ...)
