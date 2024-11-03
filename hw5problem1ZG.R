# Load required libraries
library(ggplot2)
library(dplyr)
library(RColorBrewer)

setwd("C:\\Users\\zirad\\Downloads") 

london_data <- read.csv("london_merged.csv")

weather_analysis <- london_data %>%
  group_by(weather_code) %>%
  summarise(avg_count = mean(cnt, na.rm = TRUE))

# Define labels for different weather codes
weather_labels <- c(
  "1" = "Clear", 
  "2" = "Scattered Clouds", 
  "3" = "Broken Clouds", 
  "4" = "Cloudy", 
  "7" = "Rain", 
  "10" = "Rain with Thunderstorm", 
  "26" = "Snowfall", 
  "94" = "Freezing Fog"
)

# Create the boxplot
plot <- ggplot(london_data, aes(x = as.factor(weather_code), y = cnt)) +
  geom_boxplot(aes(fill = as.factor(weather_code)), alpha = 0.7) +
  scale_fill_manual(values = brewer.pal(8, "Set3"), 
                    name = "Weather Code", 
                    labels = weather_labels) +
  labs(
    title = "How various weather conditions affect bike-sharing in London",
    x = "Weather Code",
    y = "Bike-sharing Count",
    caption = "Data Source: London Bike-sharing Dataset,Kaggle"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5),  # Center the title
    legend.position = "right"  # Place the legend to the right
  )

# Plot Save
ggsave(filename = "HW5p1ZiraddinGulumjanli.png", plot = plot, width = 10, height = 6, dpi = 300)

