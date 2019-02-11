#' jwz Theme
#'
#' [ggplot2] plot theme based on the personal blog of Jamie Zawinski
#'
#' @references https://en.wikipedia.org/wiki/Jamie_Zawinski
#' @seealso [ggplot2::theme]
#'
#' @param font Base text family
#' @param main.text.color Color of main text
#' @param sub.text.color Color of smaller text
#' @param base.size Base text size
#' @param plot.background.color Color of plot background, passed to `plot.background`
#' @param legend.position Position of legend
#' @param panel.border.color Color of plot panel border
#' @param panel.background Background panel color
#' @param panel.grid.color Color of the panel grid
#' @param axis.text.color Color of axis text
#' @param axis.text.size Size of axis text
#' @param subtitle.size Size of subtitle
#' @param legend.text Size of legend
#' @param legend.title Size of legend title
#' @param axis.title.size Size of axis title
#' @param title.size Size of title
#'
#' @export
jwz <- function(
        font = "Windows Command Prompt",
        main.text.color = "#02BAFF",
        sub.text.color = "#00FF01",
        base.size = 15,
        plot.background.color = "black",
        legend.position = "right",
        panel.border.color = "black",
        panel.background = "#014400",
        panel.grid.color = "#00FF01",
        axis.text.color = "#02BAFF",
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
                                                 color=main.text.color),
                #This sets the font, size, type and colour of text for the chart's subtitle, as well as setting a margin between the title and the subtitle
                plot.subtitle=ggplot2::element_text(family=font,
                                                    size=subtitle.size,
                                                    face="bold",
                                                    color=sub.text.color,
                                                    margin=ggplot2::margin(9,0,9,0)),
                #Legend format
                #This sets the position and alignment of the legend, removes a title and backround for it and sets the requirements for any text within the legend. The legend may often need some more manual tweaking when it comes to its exact position based on the plot coordinates.
                legend.position = legend.position,
                legend.text.align=0,
                legend.background=ggplot2::element_blank(),
                legend.key=ggplot2::element_blank(),
                legend.text=ggplot2::element_text(family=font,
                                                  size=legend.text,
                                                  color=main.text.color),
                legend.title=ggplot2::element_text(family=font,
                                                   size=legend.title,
                                                   color=sub.text.color),

                #Axis format
                #This sets the text font, size and colour for the axis test, as well as setting the margins and removes lines and ticks. In some cases, axis lines and axis ticks are things we would want to have in the chart - the cookbook shows examples of how to do so.
                axis.title=ggplot2::element_text(family=font,
                                                 size=axis.title.size,
                                                 color=sub.text.color),
                axis.text=ggplot2::element_text(family=font,
                                                size=axis.text.size,
                                                color=main.text.color),
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
                plot.caption = ggplot2::element_text(color=main.text.color),
                #Strip background (#This sets the panel background for facet-wrapped plots to white, removing the standard grey ggplot background colour and sets the title size of the facet-wrap title to font size 22)
                strip.background = ggplot2::element_rect(fill=panel.background),
                strip.text= ggplot2::element_text(color = main.text.color,
                                                  size  = 12,
                                                  hjust = 0)

        )
}
