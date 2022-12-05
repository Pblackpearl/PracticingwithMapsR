
# Practicing with maps

library (dplyr)
library(tidyverse)
library(ggplot2)

ggplot(data = diamonds) + 
  geom_count(mapping = aes(x = cut, y = color))

diamonds %>% 
  count(color, cut)

# Tile map
diamonds %>% 
  count(color, cut) %>% 
  ggplot(mapping = aes(x = color, y = cut)) +
  geom_tile(mapping = aes(fill = n))

diamonds %>% 
  count(color, cut) %>% 
  ggplot(mapping = aes(x = color, y = cut)) +
  geom_raster(mapping = aes(fill = n))

# Mapping continuous variables
ggplot(data = diamonds) + 
  geom_point(mapping = aes(x = carat, y = price))



