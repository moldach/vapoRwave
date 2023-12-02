# Use the rocker/rstudio image as the base image
FROM rocker/rstudio:4.3.2

# Install system dependencies, Poetry, and Python virtual environment tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        make \
        g++ \
        gfortran \
        libxml2-dev \
        libcurl4-openssl-dev \
        libfontconfig1-dev \
        libfreetype6-dev \
        libfribidi-dev \
        libharfbuzz-dev \
        libjpeg-dev \
        libpng-dev \
        libtiff-dev \
        libxt6 \
        python3 \
        python3-pip \
        python3-venv \
    && wget -qO- https://install.python-poetry.org | python3 - \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
                                                                                                                                                                                                   
# Set environment variables for Poetry                                                                                                                                                             
ENV PATH="/root/.local/bin:${PATH}" \                                                                                                                                                              
    POETRY_HOME="/root/.local/bin/poetry" \                                                                                                                                                        
    PASSWORD="vaporwave"                                                                                                                                                                           
                                                                                                                                                                                                   
# Create a temporary directory and Initialize a new Poetry project                                                                                                                                 
# Move the poetry files to the /app directory                                                                                                                                                      
# Create a virtual environment using Poetry                                                                                                                                                        
# Make sure Python packages can be installed by any user                                                                                                                                           
# Install pandas using pip3                                                                                                                                                                        
# Install R packages and dependencies                                                                                                                                                              
# Install R packages from GitHub                                                                                                                                                                   
# Add the user to the sudo group and set a password                                                                                                                                                
# Download RStudio theme                                                                                                                                                                           
# Set the theme in RStudio preferences                                                                                                                                                             
RUN mkdir /app && \                                                                                                                                                                                
    poetry new vaporwave && \                                                                                                                                                                      
    mv vaporwave/* /app/ && \                                                                                                                                                                      
    poetry config virtualenvs.in-project true && \                                                                                                                                                 
    cd /app && poetry install --no-dev && \                                                                                                                                                        
    chmod -R 777 .venv && \                                                                                                                                                                        
    R -e "install.packages(c('remotes', 'ggplot2', 'reticulate', 'rstudioapi', 'later'), dependencies=TRUE)" && \                                                                                  
    R -e "remotes::install_github('moldach/vapoRwave', build_vignettes=FALSE, dependencies=NA)" && \                                                                                               
    usermod -aG sudo rstudio && echo "rstudio:vaporwave" | chpasswd && \                                                                                                                           
    mkdir -p /home/rstudio/.R/themes && \                                                                                                                                                          
    wget -O /home/rstudio/.R/themes/Synthwave85.rstheme https://raw.githubusercontent.com/jnolis/synthwave85/master/Synthwave85.rstheme && \                                                       
    echo '.First <- function() { library(rstudioapi); library(later); later::later(function() { addTheme("~/.R/themes/Synthwave85.rstheme", apply = TRUE) }, delay = 1) }' > /home/rstudio/.Rprofile                                                                                                                                                                                                  
                                                                                                                                                                                                   
# Expose port 8787 for RStudio Server                                                                                                                                                              
EXPOSE 8787                                                                                                                                                                                        
                                                                                                                                                                                                   
# Start RStudio Server when the container launches                                                                                                                                                 
CMD ["/bin/bash", "-c", "source /app/.venv/bin/activate && /init"]    
