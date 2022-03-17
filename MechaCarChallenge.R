# Load dependencies
library(tidyverse)
library(dplyr)


# Deliverable 1
# Load CSV file (MechaCar MPG)
mechaCar <- read_csv("BC-MechaCar_Stat_Analysis/MechaCar_mpg.csv")

# Perform line regression
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar)

# Create summary
summary(reg)


# Deliverable 2
# Load CSV file (Suspension Coil)
suspension <- read_csv("BC-MechaCar_Stat_Analysis/Suspension_Coil.csv")

# Create total summary data frame
susp_tot_summary <- suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Create lot summary data frame
sus_lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


# Deliverable 3
# determine if the PSI across all manufacturing lots is 
# statistically different from the population mean of 1,500 
# pounds per square inch
t.test(suspension$PSI, mu=mean(suspension$PSI))

# Subset Manufacturing Lots
Lot1 = subset(suspension, Manufacturing_Lot == 'Lot1')
Lot2 = subset(suspension, Manufacturing_Lot == 'Lot2')
Lot3 = subset(suspension, Manufacturing_Lot == 'Lot3')

# determine if the PSI for each manufacturing lot is 
# statistically different from the population mean of 1,500 
# pounds per square inch
t.test(Lot1$PSI, mu=mean(suspension$PSI))
t.test(Lot2$PSI, mu=mean(suspension$PSI))
t.test(Lot3$PSI, mu=mean(suspension$PSI))
