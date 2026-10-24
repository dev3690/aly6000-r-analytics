# Class : ALY6000 Project 1 - R Script
# CRN : 20317
# Student: Dev Panchal
# Professor : Dr. Dee Chiluiza, PhD 
# Date: 14th Jan, 2025

# Project Report 1
# Description: Solutions for tasks 1 to 14.

# Task 1: Create three objects to store values
burger_price = 10
total_burger_purchased = 20
total_price = burger_price * total_burger_purchased
print(total_price)
# Total Price is 200

# Task 2: Create eight objects to store values
item_cost = 30
number_sold = 150
discount = 5
tax_rate = 0.08

gross_profit = item_cost * number_sold
net_profit = gross_profit - discount
total_tax = gross_profit * tax_rate
final_amount = gross_profit - total_tax
#print results
print(gross_profit)
print(net_profit)
print(total_tax)
print(final_amount)

# Gross Profit will be : 4500
# Net Profit will be : 4495
# Total Tax will be : 360
# Final Amount will be : 4140


# Task 3: Calculate the area of a rectangle
length = 100
width = 75
area_rectangle = length * width
print(area_rectangle)
# Area is 7500

# Task 4: Calculate using a formula
a = 10
b = 32
c = 27
d = (a * b) + c
Q = sqrt(d)
print(Q)
# Q is 18.62794

# Task 5: Create a vector to enter car speed data
speed1 = c(85.11, 70.37, 46.33, 56.37, 52.43, 57.18, 65.11, 55.65, 50.99, 57.38, 54.33, 51.34, 57.37, 73.81, 79.71, 63.85, 54.55, 45.66, 71.48, 67.25)
mean_speed = mean(speed1)
median_speed = median(speed1)
min_speed = min(speed1)
max_speed = max(speed1)
range_speed = max_speed - min_speed
sd_speed = sd(speed1)

#print(mean_speed)
#print(median_speed)
#print(min_speed)
#print(max_speed)
#print(range_speed)
#print(sd_speed)
print(paste("The mean speed is:", mean_speed))
print(paste("The Median speed is:", median_speed))
print(paste("The Minimum speed is:", min_speed))
print(paste("The maximum speed is:", max_speed))
print(paste("The range speed is:", range_speed))
print(paste("The Standard Deviation speed is:", sd_speed))

# Task 6: Obtain and present quantiles
quantile_0 = quantile(speed1, 0)
quantile_25 = quantile(speed1, 0.25)
quantile_50 = quantile(speed1, 0.5)
quantile_75 = quantile(speed1, 0.75)
quantile_100 = quantile(speed1, 1)

#print(quantile_0)
#print(quantile_25)
#print(quantile_50)
#print(quantile_75)
#print(quantile_100)
print(paste("The 0th quantile, also called the minimum value:", quantile_0))
print(paste("The 25th quantile :", quantile_25))
print(paste("The 50th quantile, also called the median:", quantile_50))
print(paste("TThe 75th quantile:", quantile_75))
print(paste("The 100th quantile, also called the maximum value:", quantile_100))

# Task 7: Delete values
speed2 = speed1[speed1 != 85.11]
new_mean_speed2 = mean(speed2)
new_median_speed2 = median(speed2)
new_sd_speed2 = sd(speed2)

print(new_mean_speed2)
print(new_median_speed2)
print(new_sd_speed2)

# Task 8: Add values
speed3 = c(speed2, 110)
new_mean_speed3 = mean(speed3)
new_median_speed3 = median(speed3)
new_sd_speed3 = sd(speed3)

print(new_mean_speed3)
print(new_median_speed3)
print(new_sd_speed3)

# Task 9: Use vectors to organize objects
vector_speed1 = c(mean_speed, median_speed, sd_speed)
vector_speed2 = c(new_mean_speed2, new_median_speed2, new_sd_speed2)
vector_speed3 = c(new_mean_speed3, new_median_speed3, new_sd_speed3)

# Task 10: Present values using a table
col_names = c("Mean", "Median", "Standard Deviation")
row_names = c("Speed 1", "Speed 2", "Speed 3")
table_speeds = matrix(c(vector_speed1, vector_speed2, vector_speed3), nrow = 3, byrow = TRUE,
                       dimnames = list(row_names, col_names))

print(table_speeds)

# Task 11: Present values above 70 in Speed 3
print(speed3)
rule_above_70 = speed3 > 70
values_above_70 = speed3[rule_above_70]
print(as.data.frame(values_above_70))

# Task 12: Present values below 55 in Speed 1
rule_below_55 = speed1 < 55
values_below_55 = speed1[rule_below_55]
print(as.data.frame(values_below_55))

# Task 13: Duplicate the revenue table
revenue_data = matrix(c(25000, 15872, 22084, 27432, 19734, 18340, 32684, 23871, 21439),
                       nrow = 3, byrow = TRUE,
                       dimnames = list(c("January", "February", "March"),
                                       c("Bogota", "Caracas", "Buenos Aires")))
print(revenue_data)

# Task 14: Write a summary of the project
# Summary:
# 1. Created and manipulated objects, vectors, and matrices.
# 2. Learned descriptive statistics and how to calculate them in R.
# 3. Explored data organization and presentation using matrices and tables.
# 4. Practiced basic data manipulation techniques such as filtering and transforming data.
# 5. Understood the importance of R for statistical computing and analysis.
