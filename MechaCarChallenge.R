#Deliverable 1
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

> mecha_table <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
> View(mecha_table)
> lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=mecha_table)

Call:
lm(formula = vehicle_length ~ vehicle_weight + spoiler_angle + 
    ground_clearance + AWD + mpg, data = mecha_table)

Coefficients:
     (Intercept)    vehicle_weight     spoiler_angle  ground_clearance               AWD  
       17.415469         -0.000170         -0.009066         -0.463776          0.406308  
             mpg  
        0.107731  

> summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=mecha_table))

Call:
lm(formula = vehicle_length ~ vehicle_weight + spoiler_angle + 
    ground_clearance + AWD + mpg, data = mecha_table)

Residuals:
     Min       1Q   Median       3Q      Max 
-1.75545 -0.85291 -0.09242  0.47948  2.72615 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)       1.742e+01  1.284e+00  13.566  < 2e-16 ***
vehicle_weight   -1.700e-04  9.005e-05  -1.888   0.0656 .  
spoiler_angle    -9.066e-03  8.721e-03  -1.040   0.3042    
ground_clearance -4.638e-01  7.112e-02  -6.521 5.77e-08 ***
AWD               4.063e-01  3.335e-01   1.218   0.2296    
mpg               1.077e-01  1.127e-02   9.563 2.60e-12 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.15 on 44 degrees of freedom
Multiple R-squared:  0.7119,	Adjusted R-squared:  0.6791 
F-statistic: 21.74 on 5 and 44 DF,  p-value: 6.712e-11

#Deliverable 2

> suspension <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)
> View(suspension)
> head(suspension)
  VehicleID Manufacturing_Lot  PSI
1    V40858              Lot1 1499
2    V40607              Lot1 1500
3    V31443              Lot1 1500
4     V6004              Lot1 1500
5     V7000              Lot1 1501
6    V17344              Lot1 1501
> Mean = mean(suspension$PSI)
> Median = median (suspension$PSI)
> Variance = var(suspension$PSI)
> SD = sd(suspension$PSI)

> #Total Summary Data Frame
> total_sum <-data.frame(Mean, Median, Variance, SD)
> View(total_sum)

> # Lot Summary
> lot_sum <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
> View(lot_sum)
>
