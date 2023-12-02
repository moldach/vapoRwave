# Use the rocker/rstudio image as the base image
FROM rocker/rstudio:4.3.2

# Install system dependencies
RUN apt-get update && \
    apt-get install -y \
        make g++ gfortran libxml2-dev libcurl4-openssl-dev \
        libfontconfig1-dev libfreetype6-dev libfribidi-dev libharfbuzz-dev \
        libjpeg-dev libpng-dev libtiff-dev libxt6 \
        python3 python3-pip vim nano 

# Install Poetry
RUN wget -qO- https://install.python-poetry.org | python3 -

# Set environment variables for Poetry
ENV PATH="/root/.local/bin:${PATH}"
ENV POETRY_HOME="/root/.local/bin/poetry"

# Create a temporary directory
WORKDIR /tmp

# Initialize a new Poetry project
RUN poetry new vaporwave

# Move the poetry files to the /app directory
WORKDIR /app
RUN mv /tmp/vaporwave/* /app/

# Create a virtual environment using Poetry
RUN poetry config virtualenvs.in-project true \
    && poetry install --no-dev

# Make sure Python packages can be installed by any user
RUN chmod -R 777 /app/.venv

# Install pandas using pip3
RUN /app/.venv/bin/pip3 install pandas numpy scikit-learn

# Install R packages and dependencies
RUN R -e "install.packages(c('remotes', 'ggplot2', 'reticulate', 'rstudioapi', 'later'), dependencies=TRUE)"

# Install R packages from GitHub
RUN R -e "remotes::install_github('moldach/vapoRwave', build_vignettes=FALSE, dependencies=NA)"

# Install Python virtual environment tools
RUN apt-get install -y python3-venv

# Add the user to the sudo group and set a password
RUN usermod -aG sudo rstudio && echo "rstudio:vaporwave" | chpasswd

# Download RStudio theme
RUN mkdir -p /home/rstudio/.R/themes && wget -O /home/rstudio/.R/themes/Synthwave85.rstheme https://raw.githubusercontent.com/jnolis/synthwave85/master/Synthwave85.rstheme
# Set the theme in RStudio preferences
RUN echo '.First <- function() { library(rstudioapi); library(later); later::later(function() { addTheme("~/.R/themes/Synthwave85.rstheme", apply = TRUE) }, delay = 1) }' > /home/rstudio/.Rprofile

# Expose port 8787 for RStudio Server
EXPOSE 8787

# Set the default password for RStudio
ENV PASSWORD vaporwave

# Start RStudio Server when the container launches
CMD ["/bin/bash", "-c", "source /app/.venv/bin/activate && /init"]
