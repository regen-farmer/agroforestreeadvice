FROM rocker/r-ver
RUN apt-get update && apt-get install -y \
    libcurl4-gnutls-dev \
    libssl-dev \
    libxml2-dev
RUN R -e "install.packages(c('shiny', 'plumber'), repos='http://cran.rstudio.com/')"
COPY ./ /usr/local/src/myscripts
WORKDIR /usr/local/src/myscripts
EXPOSE 8000
CMD ["Rscript", "runAPI.R"]
