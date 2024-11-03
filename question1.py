import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

# Load the dataset
data = pd.read_csv("london_merged.csv")

# Set the plot size for better readability
plt.figure(figsize=(12, 8))

# Define a color palette with distinct colors for each weather condition
palette = sns.color_palette("husl", len(data['weather_code'].unique()))

# Create a boxplot of bike-sharing count by weather conditions with custom palette
sns.boxplot(data=data, x='weather_code', y='cnt', palette=palette)
plt.xlabel('Weather Code')
plt.ylabel('Bike-Sharing Count')
plt.title('Boxplot of Daily Bike-Sharing Count by Weather Conditions in London')
plt.show()
