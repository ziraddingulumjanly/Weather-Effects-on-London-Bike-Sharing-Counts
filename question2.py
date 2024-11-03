import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load the dataset
data = pd.read_csv("london_merged.csv")

# Plot the violin plot with 'season' on x-axis and 'cnt' on y-axis, using different colors for each season
plt.figure(figsize=(10, 6))
sns.violinplot(data=data, x='season', y='cnt', scale='width', inner="quartile", palette="Set2")

# Set labels
plt.xlabel("Season")
plt.ylabel("Count (cnt)")
plt.title("Violin Plot of Count by Season with Different Colors")

# Display the plot
plt.show()
