library(DataExplorer)
choco <- read.csv('flavors_of_cacao.csv', header = T, stringsAsFactors = F)
# missing values
plot_missing(choco)

# Histogram of Continuous Variables
plot_histogram(choco)


# Colorful Correlation Plot
plot_correlation(choco, type = 'continuous','Review.Date')




# Time for some Categorical Variables!

# Barplots
plot_bar(choco)




# Exclude all rows or columns that contain missing values using the function na.exclude(), such as:
h2 <- na.exclude(h)
# However this can be wasteful because it removes all rows (e.g., horizons), regardless if the row 
# only has 1 missing value. Instead it’s sometimes best to create a temporary copy of the variable 
# in question and then remove the missing variables, such as clay <- na.exclude(h$clay).



# Replace missing values with another value, such as zero, a global constant, or the mean or median
# value for that column, such as: 
h$clay <- ifelse(is.na(h$clay), 0, h$clay) # or h[is.na(h$clay), ] <- 0.



# just for factors
levels(df$column)


# for characters and factors
sort(unique(h$hzname)) 






