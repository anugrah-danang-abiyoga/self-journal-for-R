# 1st: practicing using gapminder and dplyr
library(gapminder)
library(dplyr)

# Filter for China in 2002
gapminder %>%
  filter(country == 'China', year == 2002)

# 2nd: Practicing using arrange and DESC
library(gapminder)
library(dplyr)

# Sort in ascending order of lifeExp
gapminder %>%
  arrange(lifeExp)


# Sort in descending order of lifeExp
gapminder %>%
  arrange(desc(lifeExp))

# 3rd: Practicing using mutate function
library(gapminder)
library(dplyr)

# Filter, mutate, and arrange the gapminder dataset
gapminder %>%
  filter(year == 2007) %>%
  mutate(lifeExpMonths = 12 * lifeExp) %>%
  arrange(desc(lifeExpMonths))