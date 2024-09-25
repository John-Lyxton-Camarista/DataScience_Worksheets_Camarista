# Worksheet#2
# Author: John Lyxton L. Camarista
# Date: 2024-09-21

# 1. Create a vector using : operator
# a. Sequence from -5 to 5. Write the R code and its output. Describe the output.
seq_neg5_to_5 <- -5:5
print(seq_neg5_to_5)

# b. x <- 1:7. What will be the value of x?
x <- 1:7
print(x)

# 2. Create a vector using seq() function
# a. seq(1, 3, by=0.2). Specify step size
seq_1_to_3_by_02 <- seq(1, 3, by = 0.2)
print(seq_1_to_3_by_02)

# 3. A factory census of workers' ages
workers <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 
             57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24, 33, 41, 53, 40, 
             18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)

# a. Access 3rd element
print(paste(workers[3], "is the value of the 3rd element"))

# b. Access the 2nd and 4th element
print(paste(workers[2], "and", workers[4], "are the values of the 2nd and 4th elements"))

# c. Access all but the 4th and the 12th element
excluded <- workers[-c(4, 12)]
print(excluded)

# 4. Create a vector with names
x_named <- c("first" = 3, "second" = 0, "third" = 9)
print(x_named)

# a. Access first and third elements
print(x_named[c("first", "third")])

# 5. Create a sequence x from -3:2
x <- -3:2
print(x)

# a. Modify 2nd element and change it to 0
x[2] <- 0
print(x)

# 6. Diesel fuel data for Mr. Cruz
months <- c("Jan", "Feb", "March", "April", "May", "June")
price_per_liter <- c(52.50, 57.25, 62.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25L, 30L, 40L, 50L, 10L, 45L)

diesel_data <- data.frame(Month = months, Price_per_liter_PhP = price_per_liter, Purchase_quantity_Liters = purchase_quantity)
print(diesel_data)

# b. Calculate average fuel expenditure (weighted mean)
ave_fuel_expenditure <- weighted.mean(diesel_data$Price_per_liter_PhP, diesel_data$Purchase_quantity_Liters)
print(paste(ave_fuel_expenditure, "is the average fuel expenditure of Mr. Cruz"))

# 7. R's built-in rivers dataset
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
print(data)

# 8. Celebrity data
power_ranking <- 1:25
celebrity_name <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", 
                    "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", 
                    "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", 
                    "Paul McCartney", "George Lucas", "Elton John", "David Letterman", 
                    "Phil Mickelson", "J.K. Rowling", "Bradd Pitt", "Peter Jackson", 
                    "Dr. Phil McGraw", "Jay Leno", "Celine Dion", "Kobe Bryant")
pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)

celebrity_data <- data.frame(PowerRanking = power_ranking, CelebrityName = celebrity_name, Pay = pay)
print(celebrity_data)

# b. Modify J.K. Rowling's ranking and pay
power_ranking[19] <- 15
pay[19] <- 90
celebrity_data <- data.frame(PowerRanking = power_ranking, CelebrityName = celebrity_name, Pay = pay)
print(celebrity_data)

# c. Save celebrity data as CSV and import into R
write.csv(celebrity_data, "PowerRanking.csv")
data1 <- read.csv("PowerRanking.csv")
print(data1)

# d. Access rows 10 to 20 and save as RData
Ranks.RData <- data1[10:20, ]
save(Ranks.RData, file = "Ranks.RData")
print(Ranks.RData)

# 9. Import Hotels-Vienna data
Hotels_Vienna_data <- read.csv("hotels-vienna.csv")

# b. Check dimensions
print(dim(Hotels_Vienna_data))

# c. Select specific columns
selected_columns <- Hotels_Vienna_data[, c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]

# d. Save as new.RData
save(selected_columns, file = "new.RData")

# e. Display first six rows
load("new.RData")
print(head(selected_columns))
print(tail(selected_columns))

# 10. Vegetables list
vegetables <- list("Water spinach", "Tomato", "Eggplant", "Squash", "Moringa leaves", 
                   "String beans", "Bitter gourd", "Lady finger", "Taro", "Bok choy")
print(vegetables)

# b. Add two vegetables
vegetables <- append(vegetables, list("Bottle gourd", "Ridge gourd"))
print(vegetables)

# c. Add four more vegetables after index 5
vegetables <- append(vegetables, list("Radish", "Chayote", "Hyacinth Beans", "Winged Bean"), after = 5)
datapoints <- length(vegetables)
print(vegetables)
print(paste("There are", datapoints, "vegetables in the list"))

# d. Remove vegetables at index 5, 10, and 15
vegetables <- vegetables[-c(5, 10, 15)]
datapoints <- length(vegetables)
print(vegetables)
print(paste("There are", datapoints, "vegetables left in the list"))

