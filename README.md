# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Is the slope of the linear model considered to be zero? Why or why not?
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

<img src="Images/MechaCar_LM_Summary.png" width="373" />


## Summary Statistics on Suspension Coils

-The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not? 

<img src="Images/total_summary.png" width="280" />
<img src="Images/lot_summary.png" width="426" />


## T-Tests on Suspension Coils

- briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.


## Study Design: MechaCar vs Competition

Consumers are looking for the best value when buying a car. A lot of factors play into that decision, but two of key concern are the cost and fuel efficiency. We can compare MechaCar against the current top 10 selling car models that use the same fuel (i.e. electric or standard gasoline). This will show us how MechaCar's cost vs fuel efficiency compares to other top car brands.

The data needed for this analysis will be car make, model, cost, and overall MPG. We can then run a regression test on cost and MPG across the car models to find out how much MPG is gained as the cost of the vehicle rises.

Our null hypothesis for this analyis is "There is no predictable correlation between cost and fuel efficiency".
