# MechaCar Statistical Analysis

![Car photo](https://user-images.githubusercontent.com/87885677/147125787-228c803a-5cfc-4496-a1f2-7658c414ed78.jpeg)

## Linear Regression to Predict MPG

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

Vehicle weight (-0.0002) and spoiler angle (-0.01) provide a non-random amount of variance to the mpg values in the dataset.

**Is the slope of the linear model considered to be zero? Why or why not?**

The slope of the linear model is not considered zero since the p-value is 0.00000000006712. Comparing this to the significance level, we can reject a null hypothesis.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

Yes, this linear model predicts mpg of MechaCar prototypes effectively. The multiple R-squared value is equal to 0.7119 or 71.19% which means that ~71% of the time the predictions will be accurate using this linear model.

## Summary Statistics on Suspension Coils

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

Overall, the lots in total do meet this design specification with a variance of 62.29356, which does not exceed the 100 pounds per square inch requirement. However, when diving deeper into individual lots, Lot 1 and Lot 2 meet the requirement with 0.98 and 7.47 respectively, while Lot 3 has a variance of 170.29. Therefore, Lots 1 and 2 meet the requirement while Lot 3 does not.

<img width="387" alt="Screen Shot 2021-12-22 at 9 06 00 AM" src="https://user-images.githubusercontent.com/87885677/147124941-4578f3b8-1ddd-4d4d-b21c-50ed99743091.png">

<img width="498" alt="Screen Shot 2021-12-22 at 9 06 13 AM" src="https://user-images.githubusercontent.com/87885677/147124961-72a61cee-c4b5-4026-aebd-914a63b65713.png">

## T-Tests on Suspension Coils

Overall, the p-values from the t-tests for PSI were as follows:

All lots = 0.06028

<br>

<img width="404" alt="Screen Shot 2021-12-22 at 9 18 39 AM" src="https://user-images.githubusercontent.com/87885677/147124983-da52212e-cd6e-4d54-a157-7732fc47a5f4.png">

<br>

Lot 1 = 1

<br>

<img width="516" alt="Screen Shot 2021-12-22 at 9 18 51 AM" src="https://user-images.githubusercontent.com/87885677/147125006-895f8b8b-8a37-4f99-917b-aeec65f6d5e6.png">

<br>

Lot 2 = 0.6072

<br>

<img width="527" alt="Screen Shot 2021-12-22 at 9 19 04 AM" src="https://user-images.githubusercontent.com/87885677/147125017-70559cb2-4185-4b0d-a554-2e5cc54d3bcd.png">

<br>
Lot 3 = 0.04168

<br>

<img width="529" alt="Screen Shot 2021-12-22 at 9 19 14 AM" src="https://user-images.githubusercontent.com/87885677/147125025-8a94d336-a06c-4f9c-a534-9226a654ab9a.png">

<br>

With the assumption that the significance level should be below 0.05, then Lot 3 is the only lot that is significantly different. Pairing this with the lower mean and high variance could draw attention to Lot 3's underperformance. 

## Study Design: MechaCar vs Competition

When considering deeper analysis to compare the MechaCar and competition, it maybe worthwhile to run an ANOVA (analysis of variance) test. This would support in comparing different variables that are important to consumers, such as mpg, horsepower, cost, etc. When comparing the MechaCar to it's competitors, if the p-value is greater than 0.05, it would indicate that the MechaCar is similar to the competitor within the identified variables (i.e. the null hypothesis). If the p-value is less than 0.05, then MechaCar is significantly different within the identified variables. From here we would need to review the average and determine if it is either below or above the averages of the competitors, with a higher average being better and a lower average being worse.
