# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

<p>Among our independent variables the t value tells us that car length and ground clearance are providing a non-random amount of variance to the MPG. The larger the t value, the more likely that the coefficient is non-zero.</p>

<p>The slope of this regression model is not zero. In order for the slope of this model to be zero, either the dependent or independent variable would have to be static. Meaning that as one value changed, the other axis did not. For example, if the MPG was always 35 as the length or ground clearance changed, that would create a zero slope.</p>

<p>I don't think this model is accurately predicting the MPG for MechaCar prototypes, as the residual standard error is more than 8 MPG. Meaning the predicted MPG is from -8 to +8 off of the actual MPG.</p>

<img src="Images/MechaCar_LM_Summary.png" width="373" />


## Summary Statistics on Suspension Coils

<p>Looking at the suspension coil results, we can see that overall the variance is well within the limit of 100 PSI. However, when we look at individual lots, we see that Lot 3 is actually over the variance limit by quite a bit.</p>

<img src="Images/total_summary.png" width="280" />
<img src="Images/lot_summary.png" width="426" />


## T-Tests on Suspension Coils

- briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.


## Study Design: MechaCar vs Competition

Consumers are looking for the best value when buying a car. A lot of factors play into that decision, but two of key concern are the cost and fuel efficiency. We can compare MechaCar against the current top 10 selling car models that use the same fuel (i.e. electric or standard gasoline). This will show us how MechaCar's cost vs fuel efficiency compares to other top car brands.

The data needed for this analysis will be car make, model, cost, and overall MPG. We can then run a regression test on cost and MPG across the car models to find out how much MPG is gained as the cost of the vehicle rises.

Our null hypothesis for this analyis is "There is no predictable correlation between cost and fuel efficiency".
