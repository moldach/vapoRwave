floral_shoppe <- function(
        font = "VCR OSD Mono",
        text.color = "#6CFFB9",
        base.size = 15,
        plot.background.color = "#FF819C",
        legend.position = "right",
        panel.border.color = "black",
        panel.background = "black",
        panel.grid.color = "#6CFFB9",
        panel.grid.linetype = "dashed",
        axis.text.color = "#6CFFB9",
        axis.text.size = base.size * 0.6666667,
        subtitle.size = base.size * 0.8,
        legend.text = base.size * 0.8,
        legend.title = base.size * 0.93,
        axis.title.size = base.size * 0.8,
        title.size = 15
) {

        ggplot2::theme(
                #Text format:
                #This sets the font, size, type and colour of text for the chart's title
                plot.title=ggplot2::element_text(family=font,
                                                 size=title.size,
                                                 face="bold",
                                                 color=text.color),
                #This sets the font, size, type and colour of text for the chart's subtitle, as well as setting a margin between the title and the subtitle
                plot.subtitle=ggplot2::element_text(family=font,
                                                    size=subtitle.size,
                                                    face="bold",
                                                    color=text.color,
                                                    margin=ggplot2::margin(9,0,9,0)),
                #Legend format
                #This sets the position and alignment of the legend, removes a title and backround for it and sets the requirements for any text within the legend. The legend may often need some more manual tweaking when it comes to its exact position based on the plot coordinates.
                legend.position = legend.position,
                legend.text.align=0,
                legend.background=ggplot2::element_blank(),
                legend.key=ggplot2::element_blank(),
                legend.text=ggplot2::element_text(family=font,
                                                  size=legend.text,
                                                  color=text.color),
                legend.title=ggplot2::element_text(family=font,
                                                   size=legend.title,
                                                   color=text.color),

                #Axis format
                #This sets the text font, size and colour for the axis test, as well as setting the margins and removes lines and ticks. In some cases, axis lines and axis ticks are things we would want to have in the chart - the cookbook shows examples of how to do so.
                axis.title=ggplot2::element_text(family=font,
                                                 size=axis.title.size,
                                                 color=text.color),
                axis.text=ggplot2::element_text(family=font,
                                                size=axis.text.size,
                                                color=text.color),
                axis.text.x=ggplot2::element_text(margin=ggplot2::margin(5, b=10)),
                axis.text.y = ggplot2::element_text(margin=ggplot2::margin(l = 10)),
                axis.ticks=ggplot2::element_blank(),
                axis.line=ggplot2::element_blank(),

                #Grid lines
                #This removes all minor gridlines and adds major y gridlines. In many cases you will want to change this to remove y gridlines and add x gridlines. The cookbook shows you examples for doing so
                panel.grid.minor=ggplot2::element_blank(),
                panel.grid.major.y=ggplot2::element_line(linetype=3, color=panel.grid.color, size=0.2),
                panel.grid.major.x=ggplot2::element_line(linetype=3, color=panel.grid.color, size=0.2),

                #Blank background
                #This sets the panel background as blank, removing the standard grey ggplot background colour from the plot
                panel.background = ggplot2::element_rect(
                        fill=panel.background,
                        colour = NA
                ),
                plot.background = ggplot2::element_rect(
                        fill = plot.background.color,
                        colour = NA
                ),
                panel.border = ggplot2::element_rect(
                        color = panel.border.color,
                        fill = NA,
                        linetype = "solid",
                        size = 0.75
                ),
                plot.caption = ggplot2::element_text(color=text.color),
                #Strip background (#This sets the panel background for facet-wrapped plots to white, removing the standard grey ggplot background colour and sets the title size of the facet-wrap title to font size 22)
                strip.background = ggplot2::element_rect(fill=panel.background),
                strip.text= ggplot2::element_text(size  = 12,  hjust = 0)

        )
}
