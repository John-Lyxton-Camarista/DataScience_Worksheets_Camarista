---
title: "Worksheet#2"
author: "John Lyxton L. Camarista"
date: "2024-09-21"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

#### 1. Create a vector using : operator
    
```{r}
  # - a. Sequence from -5 to 5. Write the R code and its output. 
  # Describe the output.
seq_neg5_to_5 <- -5 : 5
seq_neg5_to_5
```
  
```{r}
  # - b. x <- 1:7. What will be the value of x?
x <- 1 : 7
x


```
#### 2. Create a vector seq() function
```{r}
# - a. seq(1, 3, by=0.2) specify step size
#         Write the R script and its output. Describe the output.
seq(1, 3, by=0.2)

```
#### 3. A factory has a census of its workers. There are 50 workers in total. The following list shows their ages: 34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50,  37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18.

```{r}
workers <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50,  37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)
# - a. Access 3rd element, what is the value?
print(paste(workers[[3]], "is the value of the 3rd element"))

```
```{r}
# - b. Access the 2nd and 4th element, what is the value?
print(paste(workers[[2]],"and", workers[[4]], "is the value of the 2nd and 4th element respectively"))
```
```{r}
#- c. Access all but the 4th and the 12th element is not included. Write the R script and its output.
excluded <- workers[-c(4, 12)]
excluded
```
#### 4. Create a vector x <- c("first" = 3, "second" = 0, "third" = 9 ). Then named the vector, names(x)
```{r}
# - a. Print the results. Then access x[c("first", "third")].
# describe the output.
x <- c("first" = 3, "second" = 0, "third" = 9)
x

```
```{r}
# - b. Write the code and its output.
print(x[c("first", "third")])
```


#### 5. Create a sequence x from -3:2.
```{r}
x <- c(-3:2)
```
```{r}
#- a. Modify 2nd element and change it to 0.
# Describe the output
#- b. Write the code and its output.
x[2] <- 0
x

```
```{r}
#- b. Write the code and its output.
print("the output of the second element becomes 0.")
```

#### 6. The Following data shows the diesel fuel purchased by Mr. Cruz

```{r}
#- create a data frame for the month, price per liter (php) and purchase-quantity (liter). Write the R scripts and its output.
months <- c("Jan", "Feb", "March", "April", "May", "June")
price_per_liter <- c(52.50, 57.25, 62.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25L, 30L, 40L, 50L, 10L, 45L)

diesel_data <- data.frame(Month = months, Price_per_liter_PhP = price_per_liter, Purchase_quantity_Liters = purchase_quantity)

print(diesel_data)

```
```{r}
#- What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use weighted.mean(liter, purchase). Write the R scripts and its output.
ave_fuel_expenditure <- weighted.mean(diesel_data$Price_per_liter_PhP, diesel_data$Purchase_quantity_Liters)
print(paste(ave_fuel_expenditure, "is the average fuel expenditure of Mr. Cruz from January to June"))
```

#### 7. R has actually R has actually lots of built-in datasets. For example, the rivers data “gives the lengths (in miles) of 141 “major” rivers in North America, as compiled by the US Geological Survey”.

```{r}
#- a. Type “rivers” in your R console. Create a vector data with 7 elements, containing the number of elements (length) in rivers, their sum (sum), mean (mean), median(median), variance(var), standard deviation(sd), minimum (min) and maximum (max).
#- b. What are the results?
#- c. Write the R scripts and its outputs.
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
data
```

#### 8. The table below gives the 25 most powerful celebrities and their annual apy as ranked by the editions of Forbes magazine and as listed on the Forbes.com website.

```{r}
#- a. Create vectors according to the above table.
#Write the R scripts and its output.
power_ranking <- 1:25

celebrity_name <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K. Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Leno", "Celine Dion", "Kobe Bryant")

pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)

celebrity_data <- data.frame(PowerRanking = power_ranking, CelebrityName = celebrity_name, Pay = pay)
print(celebrity_data)
```
```{r}
#- b. Modify the power ranking and pay of J.K. Rowling. Change power ranking to 15 and pay to 90. Write the R scripts and its output.

power_ranking <- 1:25

celebrity_name <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "J.K. Rowling", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson",  "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Leno", "Celine Dion", "Kobe Bryant")

pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 90, 233, 34, 40, 47, 25, 39, 45, 32, 40, 31)

celebrity_data <- data.frame(PowerRanking = power_ranking, CelebrityName = celebrity_name, Pay = pay)
celebrity_data
```
```{r}
#- C. Create an excel file from the table above and save it as csv file(PowerRanking). Import the CSV file into the RStudio. What is the R script?
# - The directory om my RStudio is in the cloud, so I import it first from my PC to the cloud storage then proceed with the R script.
data1 <- read.csv(file.choose(), header = TRUE)

```
```{r}
#- d. Access the rows 10 to 20 and save it as Ranks.RData. Write the R script and its output.
#- The output only displays celebrity rank from 10 to 20.
Ranks.RData <- data1[10:20, ]
Ranks.RData
```

#### 9. Download the Hotels-Vienna https://tinyurl.com/Hotels-Vienna
```{r}
#- a. Import the excel file into your RStudio.
# What is the R script? What is the output?
Hotels_Vienna_data <- read.csv(file.choose(), header = TRUE)
Hotels_Vienna_data
```
```{r}
#- c. Select columns country, neighborhood, price, starts, accommodation_type, and ratings. Write the R script.

select_column <- Hotels_Vienna_data[, c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
```
```{r}
#- d. Save the data as **new.RData to your Rstudio. Write the R script.
save(select_column, file = "new.RData")
```
```{r}
#- e. Display the first six rows of the new.RData. What is the R script?
load("new.RData")
head(select_column)
tail(select_column)
```

#### Create a list of ten (10) vegetables you ate during your lifetime. If none, just list down
```{r}
#- a. Write the R scripts and its output.
vegetables <- list("Water spinach", "Tomato", "Eggplant", "Squash", "Moringa leaves", "String beans", "Bitter gourd", "Lady finger", "Taro", "Bokchoy")
vegetables
```
```{r}
#- b. Add 2 additional vegetables after the last vegetables in the list. What is the R script and its output
vegetables <- append(vegetables, list("Bottle gourd", "Ridge gourd"))
vegetables
```
```{r}
#- c. Add 4 additional vegetables after index 5. How many datapoints does your vegetable list have? What is the R script and its output?
vegetables <- append(vegetables, list("Radish", "Chayote", "Hyacinth Beans", "Winged Bean"), after = 5)
vegetables
datapoints <- length(vegetables)
print(paste("There are ", datapoints, "datapoints in my Vegetable list"))
```
```{r}
#- d. Remove the vegetables in index 5, 10, and 15. How many vegetables were left? Write the codes and its output.
vegetables <- vegetables[-c(5, 10, 15)]
vegetables
datapoints <- length(vegetables)
print(paste("There are ", datapoints, "datapoints in my Vegetable list"))
```



