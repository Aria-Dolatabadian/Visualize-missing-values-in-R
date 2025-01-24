#https://cran.r-project.org/web/packages/VIM/vignettes/VIM.html
# Load the required library
library(VIM)

# Read the dataset into R
sleep_data <- read.csv("sleep_data.csv")

# Analyse missing values
a <- aggr(sleep_data, plot = FALSE)
plot(a, numbers = TRUE, prop = FALSE)

# Select specific columns for analysis
x <- sleep_data[, c("Dream", "Sleep")]

# Visualise missing values with a margin plot
marginplot(x)

# Perform k-nearest neighbours imputation
x_imputed <- kNN(x)

# Visualise the imputed data with a margin plot
marginplot(x_imputed, delimiter = "_imp")
 
