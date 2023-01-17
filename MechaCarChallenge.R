library(dplyr)
mechacar_df <- read.csv("MechaCar_mpg.csv")
model <- lm(data = mechacar_df)
summary(model)