# Remove any non-numeric characters except for periods (.) and commas (,)
pizzas_copy$price <- gsub("[^0-9.,]", "", pizzas_copy$price)

# Replace commas with periods for decimal values
pizzas_copy$price <- gsub(",", ".", pizzas_copy$price)

# Convert 'price' to numeric
pizzas_copy$price <- as.numeric(pizzas_copy$price)

# Round the 'price' column to the nearest whole number
pizzas_copy$price <- round(pizzas_copy$price)

# Check the structure of your data frame
str(pizzas_copy)

# INFO: This code performs the following actions:
#  •			Removes any non-numeric characters except for periods (.) and commas (,).
# •			Replaces commas (,) with periods (.) to ensure that decimal values are recognized.
# •			Converts the 'price' column to numeric.
# •			Rounds the 'price' column to the nearest whole number.


# 2.	Histogram for price distribution


# Create a histogram of pizza prices
hist(pizzas_copy$price, main = "Distribution of Pizza Prices", xlab = "Price", col ="yellow")

# Create a bar plot to visualize the distribution of pizza sizes
barplot(table(pizzas_copy$size), main = "Distribution of Pizza Sizes", 
        xlab = "Size", ylab = "Count", col = "turquoise")
# 3.	Distribution of pizza types

barplot(table(pizzas_copy$pizza_type_id), 
        main = "Distribution of Pizza types", 
        xlab = "size", ylab = "Count", col = "skyblue")

# 4.	Compute the average price for each pizza size category and create a bar chart to compare.

# Calculate average price for each size category
average_prices <- tapply(pizzas_copy$price, pizzas_copy$size, mean)

# Create a bar chart to compare average prices by size
barplot(average_prices, 
        main = "Average Pizza Price by Size", 
        xlab = "Size", ylab = "Average Price", col = "lightgreen")


# 5.	Most frequently ingredients used in pizza types

library(tm)
library(tmap)
library (wordcloud)
tm::tm_map()
#Create a corpus from the ingredients column
corpus <- Corpus(VectorSource(pizza_types_copy$ingredients))

pizza_types_copy<- pizza_types_copy[!grepl("�", pizza_types_copy$ingredients), ]

corpus <- tm_map(corpus, content_transformer(tolower))  # Convert to lowercase
corpus <- tm_map(corpus, removePunctuation)             # Remove punctuation
corpus <- tm_map(corpus, removeNumbers)                # Remove numbers
corpus <- tm_map(corpus, removeWords, stopwords("en"))  # Remove common English stopwords
corpus <- tm_map(corpus, stripWhitespace)   
dtm <- DocumentTermMatrix(corpus)
matrix <- as.matrix(dtm)
word_freq <- colSums(matrix)
wordcloud(names(word_freq), word_freq, min.freq = 10, scale=c(3,0.5), colors=brewer.pal(8, "Dark2"))
#INFO: 		We load the tm and wordcloud libraries, which are used for text mining and creating word clouds, respectively.
#•			We create a corpus from the 'ingredients' column of your 'pizza_types' data.
#•			We preprocess the text data by converting it to lowercase, removing punctuation, numbers, common English stopwords, and stripping whitespace.
#•			We create a document-term matrix (DTM) to represent the word frequencies in the text data.
#•			We convert the DTM to a matrix and calculate word frequencies using colSums().
#•			Finally, we create a word cloud using the wordcloud() function, specifying the minimum frequency for words to be included (min.freq), the scaling of the words, and color options.
#6.	Plot – pizza sold per month + mean, median, mode
library(dplyr)
library(ggplot2)
combined_data <- orders_copy %>%
  inner_join(order_details_copy, by = "order_id")
# Convert 'date' column to a Date object
combined_data$date <- as.Date(combined_data$date)

combined_data$month <- format(combined_data$date, format = "%Y-%m")

# Group by month and calculate the total quantity of pizzas sold in each month
monthly_sales <- combined_data %>%
  group_by(month) %>%
  summarise(total_quantity = sum(Quantity))

ggplot(monthly_sales, aes(x = month, y = total_quantity, fill = month)) +
  geom_bar(stat = "identity") +
  labs(title = "Monthly Pizza Sales",
       x = "Month",
       y = "Total Pizzas Sold") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_discrete(guide = FALSE)

 # Display the table of monthly pizza sales
  print(monthly_sales) / - tabel

#+
  
  # Calculate mean, median, and mode of monthly sales
  mean_sales <- mean(monthly_sales$total_quantity)
median_sales <- median(monthly_sales$total_quantity)
mode_sales <- monthly_sales$month[which.max(monthly_sales$total_quantity)]
cat("Mean:", mean_sales, "\n")
cat("Median:", median_sales, "\n")
cat("Mode:", mode_sales, "\n")


#7.	Longest and shortest pizza name

# Find the pizza type with the longest name
longest_name_pizza <- pizza_types_copy[which.max(nchar(pizza_types_copy$name)), ]

# Find the pizza type with the shortest name
shortest_name_pizza <- pizza_types_copy[which.min(nchar(pizza_types_copy$name)), ]

# Print the results
cat("Pizza type with the longest name:", longest_name_pizza$name, "\n")
cat("Pizza type with the shortest name:", shortest_name_pizza$name, "\n")

#8.	Most unique ingredients used on a pizza


# Load necessary libraries
library(dplyr)
library(tidyr)

#pizza_types_copy is the data frame
# Split the 'ingredients' column into a list of ingredients
pizza_types_copy <- pizza_types_copy %>%
  separate_rows(ingredients, sep = ",\\s*")

# Group by 'category' and calculate ingredient frequencies
ingredient_frequencies <- pizza_types_copy %>%
  group_by(category, ingredients) %>%
  summarise(count = n()) %>%
  arrange(desc(count))

# Find the most common ingredient in each category
most_common_ingredients <- ingredient_frequencies %>%
  group_by(category) %>%
  filter(rank(-count) == 1)

# Find ingredients unique to each category
unique_ingredients <- ingredient_frequencies %>%
  group_by(category) %>%
  filter(count == 1)

# Print the most common ingredient in each category
cat("Most Common Ingredients by Category:\n")
print(most_common_ingredients)

# Print ingredients unique to each category
cat("\nIngredients Unique to Each Category:\n")
print(unique_ingredients)


#If I need only the first x unique:
  
  # Assuming I've already identified unique ingredients in the 'unique_ingredients' data frame
  # Display the first 5 unique ingredients
  
  first_5_unique_ingredients <- head(unique_ingredients, 5)
print(first_5_unique_ingredients)

#Create positive_feedback column with random values of 0 and 1

# Generate 21,350 random values of 1 and 0
random_values <- sample(0:1, 21350, replace = TRUE)

# Add the random values as a new column 'positive_feedback' in your data frame
orders$positive_feedback <- random_values

# View the first few rows of the updated data frame
head(orders)


#9.	Customer Sentiment Analysis

#In order to perform that, I had to create an column named positive_feedback with random values of 1 and 0, representing the presence or absence of an positive feedback on the delivery/serving time.

# Generate 21,350 random values of 1 and 0
random_values <- sample(0:1, 21350, replace = TRUE)

# Generate random values (0 or 1) for the 'positive_feedback' column
random_values <- sample(c(0, 1), size = nrow(pizza_types_copy), replace = TRUE)

# Add the random values as a new column 'positive_feedback' in your data frame
pizza_types_copy$positive_feedback <- random_values

# View the first few rows of the updated data frame
head(pizza_types_copy)

library(dplyr)
library(ggplot2)
# Assuming 'orders' is the data frame
# Make sure we have the 'positive_feedback' column

# View the structure of the data frame
str(orders_copy)
# Check column names
colnames(orders_copy)

# Check if 'positive_feedback' column exists
"positive_feedback" %in% colnames(orders_copy)


orders_copy$positive_feedback <- sample(c(0, 1), size = nrow(orders_copy), replace = TRUE)

# Check the updated data frame
head(orders_copy)
# Calculate the percentage of positive and negative feedback
positive_percentage <- mean(orders_copy$positive_feedback == 1) * 100
negative_percentage <- mean(orders_copy$positive_feedback == 0) * 100

# Display the results
cat("Percentage of Positive Feedback:", positive_percentage, "%\n")
cat("Percentage of Negative Feedback:", negative_percentage, "%\n")

# Create a data frame for visualization
sentiment_data <- data.frame(Sentiment = c("Positive", "Negative"),
                             Percentage = c(positive_percentage, negative_percentage))

# Create a bar plot
ggplot(sentiment_data, aes(x = Sentiment, y = Percentage, fill = Sentiment)) +
  geom_bar(stat = "identity") +
  labs(title = "Customer Sentiment Analysis",
       y = "Percentage",
       fill = "Sentiment") +
  theme_minimal()


#10.	Display what was sold between first order and the 11th order (order id)

# Assuming 'orders_details' is the data frame with order details
# Replace 'pizzas' with the actual name of your 'pizzas' data frame

# Filter orders with order_id between 1 and 12
filtered_orders <- order_details_copy %>%
  filter(order_id >= 1 & order_id <= 12)

# Join with the 'pizzas' table to get pizza details
result <- filtered_orders %>%
  inner_join(pizzas_copy, by = "pizza_id")

# View the result
head(result)

  