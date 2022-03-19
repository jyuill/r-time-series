
library(tidyverse)
library(lubridate)
library(scales)
library(timetk)
library(quantmod)

getSymbols(Symbols='SHOP.TO', auto.assign = TRUE)

shop <- tibble(SHOP.TO)
shop_df <- as.data.frame(SHOP.TO)
shop_df$date <- date(row.names(shop_df))

shop_df %>% select(date, SHOP.TO.Close) %>% plot_time_series(date, SHOP.TO.Close, .plotly_slider = TRUE)
