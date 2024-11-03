# Load required libraries
library(ggplot2)
library(dplyr)
library(RColorBrewer)

setwd("C:\\Users\\zirad\\Downloads") 

# Load the dataset
london_data <- read.csv("london_merged.csv")

# Define labels for different seasons
season_labels <- c(
  "0" = "Spring",
  "1" = "Summer",
  "2" = "Fall",
  "3" = "Winter"
)

# Create the violin plot with boxplot 
plot <- ggplot(london_data, aes(x = as.factor(season), y = cnt)) +
  geom_violin(aes(fill = as.factor(season)), alpha = 0.7, scale = "width") +
  geom_boxplot(width = 0.1, color = "black", outlier.shape = NA) +  
  scale_fill_manual(values = brewer.pal(4, "Pastel1"), 
                    name = "Season", 
                    labels = season_labels) +
  labs(
    title = "How do bike-sharing counts vary across different seasons in London?",
    x = "Season",
    y = "Bike-sharing Count",
    caption = "Data Source: London Bike-sharing Dataset,Kaggle"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5),  # Center the title
    legend.position = "right"                 # Place the legend to the right
  )

# Plot save
ggsave(filename = "HW5p2ZiraddinGulumjanli.png", plot = plot, width = 10, height = 6, dpi = 300)

