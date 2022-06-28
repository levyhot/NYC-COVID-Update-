########### Download and save 3 datasets we need from DOHMH Git #############

library(tidyverse)

## Data #1: Data-by-day - the daily stats published by dohmh

data_by_day <- "https://raw.githubusercontent.com/nychealth/coronavirus-data/master/trends/data-by-day.csv"
download.file(data_by_day, destfile = "daily.csv", method = "curl")
  

## Data #2: 'by-group' - breaks down COVID stats by demographics
  
by_group <- "https://raw.githubusercontent.com/nychealth/coronavirus-data/master/totals/by-group.csv"
download.file(by_group, destfile = "group.csv", method = "curl")
  

## Data #3: 'by-modzcta' - breaks down COVID stats by zip code - to be used for mapping
  
by_modzcta <- "https://raw.githubusercontent.com/nychealth/coronavirus-data/master/totals/data-by-modzcta.csv"
download.file(by_modzcta, destfile = "modzcta.csv", method = "curl")