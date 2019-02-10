floralShoppe_palette <- c(
        "#394648"
        ,"#79ADDC"
        ,"#E0BAD7"
        ,"#CC7E85"
        ,"#FAA275"
        ,"#FFE2D1"
        ,"#E3D26F"
        ,"#FAEFAF"
)

floralShoppe_pal <- function() scales::manual_pal(floralShoppe_palette)

scale_colour_floralShoppe <- function(...) ggplot2::discrete_scale("colour", "floralShoppe", floralShoppe_pal(), ...)

scale_color_floralShoppe <- scale_colour_floralShoppe

scale_fill_floralShoppe <- function(...) ggplot2::discrete_scale('fill', 'floralShoppe', floralShoppe_pal(), ...)
