#install.packages("dplyr")
library(dplyr)

rep("This is an example", times = 3)

# alternatively, use the pipe to do the same thing:
"This is an example" %>% rep(times = 3)

## download data form url:
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv", destfile = "data/gapminder_data.csv")

gapminder <- read.csv(file="data/gapminder_data.csv")
str(gapminder)

# select only some columns
year_country_gdp <- select(gapminder, year, country, gdpPercap)  # subset to different columns
# do with pipe:
year_country_gdp2 <- gapminder %>% select(year, country, gdpPercap)
# OR: put a dot to indicate where the pipe should point to:
year_country_gdp2 <- gapminder %>% select(., year, country, gdpPercap)

## THE pipe feeds into the first argument of a function

identical(year_country_gdp, year_country_gdp2)


library(ggplot2)

gapminder %>% filter(year==2002) %>% ggplot(mapping = aes(x = continent, y=lifeExp))+
    geom_bar(stat="identity")

#  %>%    # ctrl-shift-m is a short cut for this
#  <- –  # alt-minus gives gets arrow btu with a dash


