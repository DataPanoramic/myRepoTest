# This is a simple change in the document to coinfirm sync with "GitHub"

library(tidyverse)
library(tigris)
library(sp)
library(dplyr)

ca <- tracts(state = 'CA', county = c('San Diego', 'Riverside'))

plot(ca)

sd_road <- roads(state = 'CA', county = 'San Diego')
plot(sd_road)
Ca_moving <- as.data.frame(Ca_moving)


ca_outflow <- Ca_moving %>%
 filter(as.numeric(...2) <57) %>%
  filter(as.numeric(...2) !=6) %>%    
  select(-c(`CALIFORNIA OUTFLOW`,'...2') )
colnames(ca_outflow) <- c("abb","state","returns","exemptions","AGI")

ca_outflow$returns <- as.numeric(ca_outflow$returns)
ca_outflow$AGI <- as.numeric(ca_outflow$AGI)  

