library(tidyr)
library(dplyr)

# adding new columns
df %>% 
  mutate(new_coumn_name = var_1 / var_n * 10000)


# group count base on unique col_4, and sum of col_7
df %>% 
  count(col_4, wt = col_7)


# Visualise changes over time
ggplot(df, aes(year, cases)) + # <x> par <year> or <y> par <cases> aa gya.
  geom_line(aes(group = country), colour = "grey50") +  # opar waly graph me
  # lines bana rahy hen, jo k <country variable> k levels hen.
  geom_point(aes(colour = country)) # ab tak k graph me lines k aakhir me point 
  # laga rahy hen. 


# table
# country     `1999` `2000`
# * <chr>        <int>  <int>
# 1 Afghanistan    745   2666
# 2 Brazil       37737  80488
# 3 China       212258 213766

# <table> now in this shape, with 2 numeric columns, we need both of them 
# in one column and names it <cases>, and need one more column to store <year>
# so:
table4a %>%
  gather(`1999`, `2000`, key = "year", value = "cases")

# the output of above line is:

# A tibble: 6 x 3
# country     year   cases
# <chr>       <chr>  <int>
#   1 Afghanistan 1999     745
# 2 Brazil        1999   37737
# 3 China         1999  212258
# 4 Afghanistan   2000    2666
# 5 Brazil        2000   80488
# 6 China         2000  213766

