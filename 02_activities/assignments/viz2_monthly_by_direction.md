# Visualization 2 — Monthly Cycling Volume by Direction

## Dataset
**Traffic Counts – Cycling (Permanent Daily)** from the City of Toronto Transportation Services Division.  
This dataset contains daily cyclist volumes measured at permanent mid-block count stations.  
Source catalogue entry: City of Toronto Traffic Counts – Cycling.  
(Downloaded resource: `volumes_atr_cyclists_permanent.csv.zip`)

## Software used
Python - I tried R studio and Tableau , fialed to produce plots

## Intended audience
Toronto risident who bike, students who commute use bike

## What message the visualization conveys
This line chart breaks monthly totals into **Northbound vs Southbound**.  
It shows that:
- Both directions share the same strong seasonal pattern.
- The two directions are similar in magnitude but not identical month-to-month, suggesting directional imbalance can vary with time.

This adds nuance beyond the overall monthly total by showing *how the total is composed*.

## Design considerations and how they were applied
- **Comparative encoding:** Two time-series lines on the same axes allow direct comparison between directions.
- **Legend for interpretability:** A legend identifies each direction line clearly.
- **Same time binning as visualization 1:** Using monthly totals keeps the two visualizations comparable while answering a different question.

## Reproducibility
As long as you have the same data, you can use my code to reproduce the plots, and I also have the data source in my python file, everyone can access the data by running my codes.


## Accessibility
I have very clear label in the plot, and clear axis. the text is easy to understand. The visualization based on line plot, which is easily to see the peaks and troughs.
Clear legends for the two lines

## Who might be impacted
Cyclists, drivers, government transportation planners

## Feature selection (what was included/excluded)
By laod the data, and explore the data structure, I can select the part of features that i interested.

## Underwater labour (invisible work)

