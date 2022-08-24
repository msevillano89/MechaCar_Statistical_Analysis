# MechaCar Statistical Analysis
## Linear Regression to Predict MPG
In the generated summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. Assuming a significance level of 0.05, according to our results, the vehicle weight, spoiler angle, and AWD are statistically unlikely to provide random amounts of variance to the linear model. Therefore, we may need to change our independent variables, transform them, and then re-evaluate the coefficients and significance.

The generated Adjusted R-squared is 0.7149. It signifies that the independent variables explain 71.5% of the variance in the dependent variable (mpg). In addition, the p-value is statistically significant (p < 0.05). Therefore we can assume that the model effectively predicts the mpg of the MechaCar prototypes.

![Linear Regression](https://github.com/msevillano89/MechaCar_Statistical_Analysis/blob/main/Images/Screen%20Shot%202022-08-19%20at%209.29.45%20PM.png)

## Summary Statistics on Suspension Coils
### Total Manufacturing Summary
Below are the summary statistics of all of the manufacturing lots. The average suspension coil's PSI for the sample is 1,498.78, while the population average is 1,500.

![Lot Summary](https://github.com/msevillano89/MechaCar_Statistical_Analysis/blob/main/Images/Screen%20Shot%202022-08-19%20at%2010.53.56%20PM.png)

### Manufacturing Lot Summary
The average PSI for each Lot is similar to the population mean of 1,500.

![Per Lot Summary](https://github.com/msevillano89/MechaCar_Statistical_Analysis/blob/main/Images/Screen%20Shot%202022-08-19%20at%2010.53.39%20PM.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. If we look into the total summary statistics results, we will notice that the condition is satisfied as the variance equals 62, less than the stipulated 100. However, if we delve into the summary statistics for each Lot, we will notice that Lot 3's variance is above 100 PSI and does not meet the design specifications. Lot 1 and Lot 2 do meet the design specifications with significantly lower variances. 

## T-Tests on Suspension Coils
### T-Test for all Lots
- p-value = .06028
- alpha = .05
Because the p-value is greater than alpha, there is a 6% probability that the results from a study happened by chance. Therefore, we do not have sufficient evidence to reject the null hypothesis. We would state that the two means are statistically similar, and there is not enough evidence to conclude that the data does not follow a normal distribution.

![T-test total](https://github.com/msevillano89/MechaCar_Statistical_Analysis/blob/main/Images/Screen%20Shot%202022-08-20%20at%202.20.54%20PM.png)

### T-Test for each Lot
Performing a similar analysis to the one above, Lot 1 and Lot 3 have p-values higher than alpha; therefore, we cannot conclude that the data does not follow a normal distribution. However, Lot 2's p-value is significantly lower than the alpha. We can reject the null hypothesis and conclude that the data does not follow a normal distribution.

![Each lot](https://github.com/msevillano89/MechaCar_Statistical_Analysis/blob/main/Images/Screen%20Shot%202022-08-20%20at%202.27.13%20PM.png)

## Study Design: MechaCar vs. Competition
To understand how the MechaCar performs against the competition, we need to consider the critical purchase drivers that today's consumers are interested in when opting for one vehicle over another. Purchase drivers could include overall vehicle cost, fuel efficiency, horsepower, maintenance cost, safety rating, warranty, etc.

**1. Metrics**

To simplify our analysis, we would test the drivers we suspect impact consumers most, including vehicle cost, maintenance cost, and fuel efficiency (mpg).

**2. Null hypothesis or Alternative hypothesis**
For each of the selected metrics, we want to know if there is a significant difference between the average or mean between the metric across all car manufacturers. Therefore, we would write a hypothesis for each metric as follow:
- Null Hypothesis: There is **no statistical difference** between the observed sample mean and its presumed population mean.
- Alternate Hypothesis: **At least one of the means** is different from all other groups

**3. Statistical test**
To study the statistical differences, we would use the **ANOVA-test** since we are interested in comparing the means across more than two samples or groups. For vehicle and maintenance costs, we would run a **one-way ANOVA test**, while for fuel efficiency, we would need to run a **two-way ANOVA test** since we would want to understand fuel efficiency for cities and highways. 

**4. Data needed to run the statistical test**
We will require historical data for at least three years for the selected metrics for MechaCar and competitors. Depending on our targeted confidence interval, we will need to increase our sampling size to make sure we reduce any errors in our study.
