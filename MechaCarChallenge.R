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

