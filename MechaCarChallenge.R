# Deliverable 1: Linear Regression to Predict MPG

# STEP 1 - Load the dplyr package
library(dplyr)

#STEP 2 - Import and Read MechaCar_mpg file
MechaCar_mpg <- read.csv("Resources/MechaCar_mpg.csv")

#STEP 3 - Perform Linear Regression
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg) #generate multiple linear regression
summary(model) #summarize linear model

# Deliverable 2: Create Visualizations for the Trip Analysis

#STEP 1 - Import and Read Suspension_Coil.csv
Suspension_Coil <- read.csv("Resources/Suspension_Coil.csv")

# STEP 2 - Creates a total_summary dataframe
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary

# STEP 3 - Creates a lot_summary dataframe
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary

# Deliverable 3: T-Tests on Suspension Coils

# STEP 1 - t.test() function for all manufacturing lots
t.test(Suspension_Coil$PSI, mu = 1500)

#STEP 2 - t.test() for each manufacturing lot
#Manufacturing Lot 1
Lot1 = subset(Suspension_Coil, Manufacturing_Lot == "Lot1")
t.test(Lot1$PSI, mu=1500)

#Manufacturing Lot 2
Lot2 = subset(Suspension_Coil, Manufacturing_Lot == "Lot2")
t.test(Lot2$PSI, mu=1500)

#Manufacturing Lot 3
Lot3 = subset(Suspension_Coil, Manufacturing_Lot == "Lot3")
t.test(Lot3$PSI, mu=1500)



