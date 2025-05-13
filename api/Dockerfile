#plumber image from rstudio
FROM rstudio/plumber

# install plumber
RUN R -e "install.packages(c('jsonlite'))"

# copy everything from the current directory into the container
COPY . .

# open port 8080 to traffic
EXPOSE 8080

# when the container starts, start the main.R script
CMD ["Rscript", "main.R"]