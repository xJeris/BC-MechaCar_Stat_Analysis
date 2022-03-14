# Load dependencies
library(tidyverse)
library(dplyr)

# Load CSV file
mechaCar <- read_csv("BC-MechaCar_Stat_Analysis/MechaCar_mpg.csv")

# Perform line regression
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar)

# Create summary
summary(reg)

