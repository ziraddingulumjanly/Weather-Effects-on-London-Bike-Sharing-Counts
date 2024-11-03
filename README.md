# London Bike Sharing Analysis

This repository contains an analysis of the London Bike Sharing dataset to explore how weather conditions and seasons impact daily bike-sharing counts.

## Project Structure

- **london_merged.csv**: Dataset containing historical bike-sharing data in London, sourced from TfL Open Data. Key fields include temperature, humidity, wind speed, weather conditions, holidays, weekends, and seasons.
  
- **results.docx**: Documentation of findings, including responses to the questions:
  - How does weather impact daily bike-sharing counts?
  - How does bike usage vary across seasons?

- **Question1.png** & **Question2.png**: Visual results from Python code execution for the two analysis questions.

- **hw5problem1ZG.R** & **hw5problem2ZG.R**: R scripts that analyze the data, focusing on weather and seasonal trends in bike-sharing counts. Results of R code are saved as images in `results.docx`.

- **question1.py** & **question2.py**: Python scripts for analyzing the data, addressing the same two questions as above.

## Analysis Overview

This project investigates two primary questions:
1. How does London's weather affect daily bike-sharing counts?
2. How do bike-sharing counts vary by season?

   ![all_in_1](https://github.com/user-attachments/assets/c400c2eb-6c3b-4854-96d6-52c878c4c61c)

## Dataset Details

The dataset includes the following key fields:
- `timestamp`: Grouped by hour for bike-sharing counts
- `cnt`: Count of new bike shares
- `t1`, `t2`: Real and "feels like" temperature in °C
- `hum`: Humidity (%)
- `wind_speed`: Wind speed (km/h)
- `weather_code`: Categorical weather condition
- `is_holiday`: Boolean for holiday (1) or not (0)
- `is_weekend`: Boolean for weekend (1) or not (0)
- `season`: Season categorization (0 = spring, 1 = summer, 2 = fall, 3 = winter)

For more details on the dataset, refer to [Kaggle dataset source](https://www.kaggle.com/datasets/hmavrodiev/london-bike-sharing-dataset).

---

# ZIRADDINGULUMJANLI2024
