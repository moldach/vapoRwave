# VapoRwave Themes

[![License:
MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/moldach/vapoRwave/blob/master/LICENSE.md)

**Contact:** - [Twitter](https://twitter.com/moldach) -
[GitHub](https://github.com/moldach) - [Personal
Website](https://moldach.github.io/)

## Table of Contents

  - [Overview](#overview)
  - [Installation](#installation)
      - [Windows Font Installation](#windows-font-installation)
  - [Themes](#themes)
      - [Floral Shoppe](#floral-shoppe)
      - [New Retro Wave](#new-retro-wave)
      - [jwz](#jwz)
  - [Vignettes](#vignettes)
      - [Docker](#docker)
  - [Contributing](#contributing)
  - [License](#license)

## Overview

`vapoRwave` is an R package that provides `ggplot2` themes inspired by
the vaporwave movement, a genre of electronic music and art
characterized by nostalgic and satirical takes on consumer capitalism,
glitch art, anime, 3D-rendered objects, and cyberpunk tropes.

Explore the aesthetics of vaporwave through themes that mimic iconic
album covers and visual styles.

## Installation

Use the `devtools` package to install it.

``` r
devtools::install_github("moldach/vapoRwave")

# To include the vignette
devtools::install_github("moldach/vapoRwave", build_vignettes=TRUE)
```

Load packages:

``` r
library(vapoRwave)
library(ggplot2)
library(extrafont)
```

### Windows Font Installation

While Ubuntu users can effortlessly install fonts, Windows users are
required to take an additional step to utilize the fonts provided.

The fonts from the vapoRwave package will be locally installed in
`C:\Windows\Users\<username>\MyFonts\`. To use them, move/copy the fonts
to **Control Panel -\> Appearance and Personalization -\> Fonts**.

![](vignettes/figure-gfm/load-windows-fonts-00.png)
![](vignettes/figure-gfm/load-windows-fonts-01.png)

**After each new R session, execute the following commands to make the
fonts available:**

``` r
library(extrafont)
# Import the TrueType fonts
font_import(paths = "C:/Windows/Fonts/", recursive = TRUE)
```

Select `Y` to continue:

![](vignettes/figure-gfm/load-windows-fonts-02.png)

## Themes

### Floral Shoppe

![](vignettes/figure-gfm/FloralShoppe.png)

``` r
ggplot(mpg, aes(displ)) + 
        geom_histogram(aes(fill=class), 
                   binwidth = .1, 
                   col="black", 
                   size=.1) +  # change binwidth
        labs(title="Floral Shoppe", 
        subtitle="Engine Displacement across Vehicle Classes") + floral_shoppe() + scale_fill_floralShoppe()
```

![](vignettes/figure-gfm/floralShoppe_01-1.png)

### New Retro Wave

![](vignettes/figure-gfm/new_retro.jpg)

``` r
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
        scale_colour_newRetro() +
        guides(size = guide_legend(override.aes = list(colour = "#FA5F70FF")))
```

![](vignettes/figure-gfm/newRetro_01-1.png)

### JWZ

![](vignettes/figure-gfm/jwz.jpg)

``` r
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
```

![](vignettes/figure-gfm/jwz_01-1.png)

## Vignettes

For more advanced and complex use-cases, as well as detailed examples
and customization options, refer to the [vapoRwave
vignette](doc/vapoRwave.html). The vignette explore diverse demos that
include information on various palletes, fonts, changing parameters, and
integrating with extensions. For a comprehensive guide, consult the
vignette for the full potential of the `vapoRwave` package.

When users install the package and want to access the vignettes, they
can use the following command to open them:

``` r
library(vapoRwave)
browseVignettes("vapoRwave")
```

### Docker

Welcome to vapoRwave v1.1, the ultimate synthesis of nostalgia and
cutting-edge data visualization self-contained within a New Retro IDE
[Synthwave85](https://github.com/jnolis/synthwave85) IDE.

With this latest update, the installation process is simplified,
ensuring seamless compatibility across all operating systems. Embrace
the future with a New Retro theme in your IDE, featuring a pre-loaded
Python environment through the reticulate package. Now, Python
enthusiasts can seamlessly code in a rad retro style while harnessing
the intuitive syntax and potent graphics system of R.

``` bash
docker build -t vaporwave .
docker run -p 8787:8787 -e PASSWORD=vaporwave vaporwave
```

![](vignettes/figure-gfm/docker-and-r-demo.gif)

For example, you can use Pandas to read and manipulate data then easily
plot the Pandas data frame using ggplot2:

You can install `R` packages in the *console* as well as Python packages
(using `pip3`) to a Poetry virtual environment along with any system
dependencies you require (using `apt-get`).

![](vignettes/figure-gfm/installs-clip.gif)

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code
of conduct, and the process for submitting pull requests to us.

## License

This code is released under the MIT License - see the
[LICENSE.md](LICENSE.md) file for details.
