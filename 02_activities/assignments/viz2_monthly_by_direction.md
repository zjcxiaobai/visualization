# Visualization 2 — Monthly Cycling Volume by Direction

## Dataset
**Traffic Counts – Cycling (Permanent Daily)** from the City of Toronto Transportation Services Division.  
This dataset contains daily cyclist volumes measured at permanent mid-block count stations.  
Source catalogue entry: City of Toronto Traffic Counts – Cycling.  
(Downloaded resource: `volumes_atr_cyclists_permanent.csv.zip`)

## What software did you use to create your data visualization?
R

## Who is your intended audience? 
Toronto risident who bike, students who commute use bike

## What information or message are you trying to convey with your visualization? 
This line chart breaks monthly totals into **Northbound vs Southbound**.  
It shows that:
- Both directions share the same strong seasonal pattern.
- The two directions are similar in magnitude but not identical month-to-month, suggesting directional imbalance can vary with time.
This adds nuance beyond the overall monthly total by showing *how the total is composed*.

## What aspects of design did you consider when making your visualization? How did you apply them? With what elements of your plots? 
- **Comparative encoding:** Two time-series lines on the same axes allow direct comparison between directions.
- **Legend for interpretability:** A legend identifies each direction line clearly.
- **Same time binning as visualization 1:** Using monthly totals keeps the two visualizations comparable while answering a different question.

## How did you ensure that your data visualizations are reproducible? If the tool you used to make your data visualization is not reproducible, how will this impact your data visualization? 
As long as you have the same data, you can use my code to reproduce the plots, and I also have the data source in my python file, everyone can access the data by running my codes.


## How did you ensure that your data visualization is accessible?  
I have very clear label in the plot, and clear axis. the text is easy to understand. The visualization based on line plot, which is easily to see the peaks and troughs.
Clear legends for the two lines

## Who are the individuals and communities who might be impacted by your visualization?  
Cyclists, drivers, government transportation planners

## How did you choose which features of your chosen dataset to include or exclude from your visualization? 
By laod the data, and explore the data structure, I can select the part of features that i interested.

## What ‘underwater labour’ contributed to your final data visualization product?


