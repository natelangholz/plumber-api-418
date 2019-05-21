# start from the rocker/r-ver:3.5.0 image
FROM rocker/tidyverse

# Make the default shell bash
ENV SHELL=/bin/bash

# Update apt and install some bare essentials
RUN apt-get update && \
    apt-get install -y vim \
                    emacs \
                    nano \
                    wget \
                    curl \
                    sudo

# Change the workdir to /home/dev
WORKDIR /home/rstudio/
