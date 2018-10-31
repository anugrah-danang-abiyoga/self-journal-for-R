# 1st: use summarize to calculate median of the data
library(gapminder)
library(dplyr)

# Summarize to find the median life expectancy
gapminder %>%
  summarize(medianLifeExp = median(lifeExp))

# 2nd: using median with filter 
library(gapminder)
library(dplyr)

# Filter for 1957 then summarize the median life expectancy
gapminder %>%
  filter(year == 1957) %>%
  summarize(medianLifeExp = median(lifeExp))

# 3rd: Do it together
library(gapminder)
library(dplyr)

# Filter for 1957 then summarize the median life expectancy and the maximum GDP per capita

gapminder %>% 
  filter(year == 1957) %>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))

# 4th: use group_by
library(gapminder)
library(dplyr)

# Find median life expectancy and maximum GDP per capita in each year
gapminder %>%
  group_by(year) %>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))

# 5th: modify with filter
library(gapminder)
library(dplyr)

# Find median life expectancy and maximum GDP per capita in each continent in 1957
gapminder %>%
  filter(year == 1957) %>%
  group_by(continent) %>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))

# 6th: combine it with ggplot
library(gapminder)
library(dplyr)
library(ggplot2)

by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPercap = max(gdpPercap))

# Create a scatter plot showing the change in medianLifeExp over time
ggplot(by_year, aes(x = year, y = medianLifeExp)) +
  geom_point() +
  expand_limits(y = 0)