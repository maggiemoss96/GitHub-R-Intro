packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

# create a string of package names
packages <- c('tidyverse',
              'palmerpenguins',
              'lterdatasampler',
              'terra',
              'sf',
              'rmarkdown',
              'tigris',
              'elevatr',
              'rgdal')

packageLoad(packages)

source("setup.R")
