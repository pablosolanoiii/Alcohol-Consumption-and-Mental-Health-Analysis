# Alcohol-Consumption-and-Mental-Health-Analysis

## Project Overview

This project explores the relationship between alcohol consumption patterns and mental health outcomes among adults in the United States using the NESARC dataset.

The goal is to examine whether drinking frequency, number of drinks, and age relate to measures of mental health functioning and depressive symptoms.

This repository is currently focused on building a clean and reproducible dataset that will be used for statistical analysis.

---

## Current Status

Work in progress.

The current stage of the project includes:

- Importing the NESARC dataset
- Cleaning variables based on the official codebook
- Converting coded missing values (e.g., 9, 99) to NA
- Creating readable variables for analysis
- Performing validation checks on the cleaned dataset

Statistical analysis and visualization will be added in later stages.

---

## Dataset

Data source:  
National Epidemiologic Survey on Alcohol and Related Conditions (NESARC)

Selected variables used in this project include:

- Alcohol use in the past 12 months (S2AQ3)
- Frequency of alcohol consumption (S2AQ5B)
- Typical number of drinks on drinking days (S2AQ5D)
- Frequency of feeling downhearted or depressed in the past 4 weeks (S1Q213)
- Continued drinking despite negative mental health effects (S2BQ1A16)
- Overall mental health functioning score (NBMCS)
- Age (AGE)
- Age at which drinking started (S2AQ16A)

---

## Data Cleaning

The script `dataCleaning.R` prepares the dataset for analysis by:

- Validating variable ranges using the NESARC codebook
- Removing invalid values
- Converting survey missing codes (such as 9 and 99) to NA
- Creating labeled variables for easier interpretation

Example cleaned variables include:

- DRINK_PAST_YTD
- DRINK_FREQ
- NUM_DRINKS
- SAD_PAST_MTD
- DRINK_DESPITE_MH
- MH_SCORE
- START_AGE

---

## Research Questions

The analysis will focus on the following questions:

1. Is there a relationship between alcohol consumption frequency and mental health functioning among U.S. adults?

2. Do individuals who report alcohol use in the past 12 months report higher levels of depressive symptoms compared to non-drinkers?

3. For a given alcohol consumption amount, does age influence the relationship with mental health score?

---

## Running the Script

To run the current data preparation stage:

1. Place the NESARC dataset in the project directory.
2. Open `dataCleaning.R` in RStudio.
3. Run the script from top to bottom.

The script cleans the dataset, generates labeled variables, and performs summary checks to verify the results.

---

## Repository Structure

dataCleaning.R  
Script used to clean and prepare the NESARC variables.

Nesarc_Data.csv  
Raw dataset used for analysis.

README.md  
Project overview and documentation.

---

## Next Steps

Planned additions include:

- Exploratory data analysis
- Statistical modeling of alcohol consumption and mental health
- Visualization of relationships between variables
- Interpretation of statistical results
