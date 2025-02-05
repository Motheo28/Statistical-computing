# ============================
# Setup
# ============================
library(ggplot2)              # Load required packages
data_raw <- read.csv("_raw_data/air_pollution.csv")  # Load dataset

# ============================
# Data Cleaning
# ============================
data_cleaned <- data_raw |>
  dplyr::filter(!is.na(pm2.5)) |>
  dplyr::mutate(log_pm = log(pm2.5))

# ============================
# Visualization
# ============================
ggplot(data_cleaned, aes(x = temperature, y = log_pm)) +
  geom_point() +
  geom_smooth(method = "lm")

# ============================
# Model Fitting
# ============================
model <- lm(log_pm ~ temperature + humidity, data = data_cleaned)