## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  echo = TRUE, 
  fig.width=8, fig.height=5
)

## ------------------------------------------------------------------------
scales::show_col(vapoRwave:::floralShoppe_palette)

## ------------------------------------------------------------------------
scales::show_col(vapoRwave:::newRetro_palette)

## ------------------------------------------------------------------------
scales::show_col(vapoRwave:::jwz_palette)

## ------------------------------------------------------------------------
scales::show_col(vapoRwave:::hotlineBling_palette)

## ------------------------------------------------------------------------
scales::show_col(vapoRwave:::hyperBubble_palette)

## ------------------------------------------------------------------------
library(tidyverse)
library(vapoRwave)
library(extrafont)

## ----floralShoppe_01-----------------------------------------------------
# use palette_03
ggplot(mpg, aes(displ)) + 
        geom_histogram(aes(fill=class), 
                   binwidth = .1, 
                   col="black", 
                   size=.1) +  # change binwidth
        labs(title="Floral Shoppe", 
        subtitle="Engine Displacement across Vehicle Classes") + floral_shoppe() + scale_fill_floralShoppe()


## ----newRetro_01---------------------------------------------------------
options(scipen=999)  # turn-off scientific notation like 1e+48
data("midwest", package = "ggplot2")
ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state, size=popdensity)) + 
  geom_smooth(method="loess", se=F, color = "#FA5F70FF") + 
  xlim(c(0, 0.1)) + 
  ylim(c(0, 500000)) + 
  labs(subtitle="Area Vs Population", 
       y="Population", 
       x="Area", 
       title="New Retro Theme", 
       caption = "Source: midwest") + 
        new_retro() + 
        scale_colour_newRetro()


## ----jwz_01--------------------------------------------------------------
ggplot(mpg, aes(class, cty)) +
        geom_boxplot(aes(fill=factor(cyl))) + 
        theme(axis.text.x = element_text(angle=65, vjust=0.6)) + 
        labs(title="Box plot", 
             subtitle="City Mileage grouped by Class of vehicle",
             caption="Source: mpg",
             x="Class of Vehicle",
             y="City Mileage") + 
        jwz() +
        scale_fill_jwz()

## ---- eval=FALSE---------------------------------------------------------
#  extrafont::fonts()

## ----newRetro_02---------------------------------------------------------
var <- mpg$class  # the categorical data 

## Prep data (nothing to change here)
nrows <- 10
df <- expand.grid(y = 1:nrows, x = 1:nrows)
categ_table <- round(table(var) * ((nrows*nrows)/(length(var))))
categ_table
#>   2seater    compact    midsize    minivan     pickup subcompact        suv 
#>         2         20         18          5         14         15         26 

df$category <- factor(rep(names(categ_table), categ_table))  
# NOTE: if sum(categ_table) is not 100 (i.e. nrows^2), it will need adjustment to make the sum to 100.

## Plot
ggplot(df, aes(x = x, y = y, fill = category)) + 
    geom_tile(color = "black", size = 0.5) +
    scale_x_continuous(expand = c(0, 0)) +
    scale_y_continuous(expand = c(0, 0), trans = 'reverse') +
    scale_fill_newRetro() +
    labs(title="Waffle Chart", subtitle="'Class' of vehicles",
         caption="Source: mpg") + new_retro(font = "SF Alien Encounters Solid", main.text.color = "pink")

## ----jwz_02--------------------------------------------------------------
library(gapminder)
ggplot(filter(gapminder, year == 2007), aes(x = gdpPercap, y = lifeExp)) +
    scale_x_log10(labels = scales::dollar) +
    geom_point(aes(size = pop, fill = continent), shape = 21, colour = "white", alpha = 0.6) +
    scale_size_continuous(range = c(1, 20)) +
    labs(title = "",
         subtitle = "Relationship between life expectancy and income, 2007",
         caption = "Source: Gapminder.org  |  @traffordDataLab",
         x = "GDP per capita ($)",
         y = "Age (years)") +
    guides(size = FALSE) +
    jwz(font = "Streamster", main.text.color = "#FFCCFF", sub.text.color = "#CCFFFF", subtitle.size = 16) + scale_fill_hyperBubble()

## ----newRetro_03---------------------------------------------------------
df <- gapminder %>% 
  filter(country %in% c("France", "Germany", "Ireland", "Italy")) %>% 
  mutate(year = as.Date(paste(year, "-01-01", sep = "", format='%Y-%b-%d')))

ggplot(df, aes(x = year, y = gdpPercap, fill = country)) +
  geom_area(alpha = 0.4) +
  scale_x_date(breaks = df$year, date_labels = "%Y") +
  scale_y_continuous(expand = c(0, 0), labels = scales::dollar) +
  labs(title = "",
       subtitle = "GDP per capita by country, 1952-2007",
       caption = "Source: Gapminder.org  |  @traffordDataLab",
       x = NULL,
       y = "GDP per capita ($)",
       fill = NULL) +
  floral_shoppe(main.text.color = "black", font = "OCR A Extended", legend.position = "bottom") +
  scale_fill_newRetro()

## ----jwz_03--------------------------------------------------------------
library(forecast)

# Subset data
nottem_small <- window(nottem, start=c(1920, 1), end=c(1925, 12))  # subset a smaller timewindow

# Plot (capital "B" is the Blade Runner guy)
ggseasonplot(nottem_small) + labs(title="Seasonal B plot:", subtitle = "Air temperatures at Nottingham Castle") + scale_colour_jwz() + new_retro(font = "Blade Runner Movie Font")

## ----floralShoppe_02-----------------------------------------------------
library(ggcorrplot)
mydata <- mtcars[, c(1,3,4,5,6,7)]
corr <- round(cor(mydata),1)
ggcorrplot(corr, hc.order = T, 
           type = 'lower',
           outline.color = 'white',
           ggtheme = ggplot2::theme_bw,
           colors = c('#79ADDC', 'white', '#CC7E85'),
           lab = T) + floral_shoppe()

## ----WVPlots-------------------------------------------------------------
library(WVPlots) 

PairPlot(iris, 
         colnames(iris)[1:4], 
         "Anderson's Iris Data -- 3 species", 
         group_var = "Species") +
        labs(caption = "Source: https://bit.ly/2N7tudH") + 
                jwz() + 
                scale_colour_hotlineBling()

## ----floralShoppe_03-----------------------------------------------------
ggplot(faithful, aes(x = eruptions, y = waiting)) +
        geom_point() + stat_density_2d(aes(fill = ..level..), geom = "polygon") +
        jwz() + 
        scale_fill_gradient(low = "#55FFFF", high = "#8B2E8B")

