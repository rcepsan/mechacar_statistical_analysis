library(dplyr)
mechacar_df <- read.csv("MechaCar_mpg.csv")
model <- lm(data = mechacar_df)
summary(model)

library(dplyr)
suspension_coil_table <- read.csv("Suspension_Coil.csv", header = TRUE)
total_summary_df <- suspension_coil_table %>%
  summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), std_dev = sd(PSI))
print(total_summary_df)

library(dplyr)
suspension_coil_table <- read.csv("Suspension_Coil.csv", header = TRUE)
lot_summary <- suspension_coil_table %>%
  group_by(Manufacturing_Lot) %>%
  summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), std_dev = sd(PSI))
print(lot_summary)
