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

result <- t.test(suspension_coil_table$PSI, mu = 1500)
print(result)

result_1 <- t.test(subset(suspension_coil_table, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
result_2 <- t.test(subset(suspension_coil_table, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
result_3 <- t.test(subset(suspension_coil_table, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)
print(result_1)
print(result_2)
print(result_3)
