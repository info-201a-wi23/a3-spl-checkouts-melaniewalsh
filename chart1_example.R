library("dplyr")
library(ggplot2)

df <- read.csv("~/Desktop/a3-spl-checkouts-melaniewalsh/2022-2023-All-Checkouts-SPL-Data.csv", stringsAsFactors = FALSE)

checkouts_by_year <- df %>% group_by(CheckoutYear) %>% summarize(total = sum(Checkouts))

ggplot(checkouts_by_year) +
  geom_line(aes(x=CheckoutYear, y = total))
