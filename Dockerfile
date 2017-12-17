# Docker file for data_analysis_pipeline_eg
# Duong Vu
# December 2017


# use rocker/tidyverse as the base image and
FROM rocker/tidyverse

# then install the GGally packages
RUN Rscript -e "install.packages('GGally', repos = 'https://cloud.r-project.org')"

# then install the GGally packages
RUN Rscript -e "install.packages('mgcv', repos = 'https://cloud.r-project.org')"

# Last install the ezknitr packages
RUN Rscript -e "install.packages('ezknitr', repos = 'https://mran.revolutionanalytics.com/snapshot/2017-12-11')"

# Install packrat
RUN R -e 'install.packages("packrat" , repos="http://cran.us.r-project.org"); packrat::restore()'
