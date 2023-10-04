# Assignment Activity 1
## Summary of Assignment Activity 1

The assignment activity involved data manipulation and analysis using a dataset from `turtle_reviews.csv`, which encompasses various customer details and product reviews. Essential libraries such as Pandas, NumPy, and Sklearn facilitated the data exploration, cleaning, and subsequent regression analysis.

### Data Cleaning and Management
The data underwent a thorough cleaning process, including handling missing values, renaming columns, and dropping unnecessary variables, after which the refined data was saved as `reviews_cleaned.csv`.

### Regression Analysis Insights
An OLS regression model offered notable insights, explaining 84% of the variance in customer loyalty points through variables like age, remuneration, and spending score, all of which were statistically significant.

### Observations and Further Exploration
Nevertheless, the assignment partially overlooked the potential of data visualisation and may benefit from a deeper exploration of other variables and potentially leveraging other statistical methods.

#### Exploring Text Data through NLP
A noteworthy area for further exploration includes diving into text data via Natural Language Processing (NLP) to glean more insights into customer sentiments from their reviews, thereby possibly unearthing additional variables that could influence and predict loyalty points and customer behaviour. This additional layer of analysis could elevate the predictive modelling and provide a richer understanding of customer behaviour and preferences.

# Assignment Activity 2
## Summary of Assignment Activity 2

## Overview:

The analysis aimed to explore correlations and segmentations within the customer base regarding remuneration and spending scores, using k-means clustering to provide actionable insights to the marketing department.

### Data Insights:

1. **Correlation Insight:** Visual inspection revealed a moderate correlation between remuneration and spending scores. Higher-income often correlated with higher spending, but exceptions existed.

2. **Cluster Identification:** The Elbow and Silhouette methods determined an optimal cluster solution with 'k' clusters. This segmentation unveiled customer groups with distinct remuneration and spending patterns.

3. **Customer Segments Characteristics:** Key segments included high earners with high/low spending and low earners with high/low spending, vital for tailored marketing strategies.

4. **Utility of Scores:** Remuneration and spending scores proved beneficial in creating actionable segments. Each cluster represented unique combinations of these variables, revealing varying spending behaviours.

5. **Cluster Size and Consistency:** Varying cluster sizes indicated non-uniform data distribution. Some clusters were densely populated, while others were sparse, suggesting underserved or oversaturated market segments.

### Analytical Reflections:

The analysis uncovered segmentation and correlations, but cluster size disparities hint at unexplored nuances. Tailored marketing strategies for each cluster will maximize the potential of this segmentation, ensuring optimal resource allocation and leveraging insights effectively.

# Assignment Activity 3
## Summary of Assignment Activity 3

## 1. Data Pre-processing

- **Handling Missing Values:** Ensured data integrity by managing null or missing entries.
- **Text Normalisation:** Involved stemming, lemmatisation, and transformation to lowercase, preparing the reviews for more precise analysis.

## 2. Analysis Techniques

- **NLP and Sentiment Analysis:** Utilised to dissect and comprehend the textual data in reviews.
- **Sentiment Intensity Analyser:** Employed from NLTK, which played a pivotal role in categorising sentiments into predefined slots: positive, neutral, and negative.

## 3. Key Findings

- **Word Usage:** 'Game', 'great', and 'fun' were the most prominently used words in reviews.
- **Visual Representation:** Word clouds were generated to visualise and ascertain word dominance in customer feedback.
- **Sentiment Breakdown:** The analysis facilitated a broad perception of customer sentiment through categorisation, although this breakdown invites a more detailed examination.

## 4. Further Insights and Recommendations

- **Correlation Studies:** Exploring connections between sentiments and variables like 'loyalty_points' and 'spending_score'.
- **Advanced Modeling:** Leveraging advanced models, for instance, LSTM, for refined sentiment prediction.
- **Temporal Analysis:** Investigating how customer sentiments morph over different time frames and identifying any prevalent trends or anomalies.

## 5. Conclusion

An in-depth investigation into the customer reviews utilising a structured methodology has afforded a preliminary understanding of the prevailing sentiments. While the findings denote a potential inclination towards positive feedback, signified by word usage, a more profound, multifaceted analysis is warranted to truly encapsulate and understand the varied customer perspectives and sentiments.

# Assignment Activity 4
**Analysing the visualisations provides profound insights into global video game sales across various platforms"**

**Scatterplot (NA vs. EU Sales)**

Predominant clustering between 0-5 on both axes indicates common sales ranges for the majority of games in both regions. A visible pattern: as NA sales increase, EU sales tend to follow, though with some deviation and outliers, especially between 18.5-24 on the NA axis.

**Histogram (Global Sales)**

A left-skewed distribution, with substantial peaks in bins 1 and 2, signifies most global sales figures lie in a lower range, gradually decreasing to minimal frequencies in higher sales ranges, particularly bins 4, 5, and 6.

**Boxplot (Sales by Platform)**

"SNES" exhibits the highest median sales, while "NES", "Wii", and "GB" present notable variability in global sales. Several platforms, especially "Wii", showcase significant outliers, underscoring inconsistent global sales distributions across platforms, albeit median positions remain relatively consistent.

**Bar Plot (Total Sales per Platform)**

"Wii", "XBOX360", "PS3", and "DS" emerge as top-performing platforms, each boasting total sales above 200. Conversely, "2600", "GEN", and "PSV" rank as the lowest performers, each achieving less than approximately 10 in total sales. Despite noticeable leaders, the descent from highest to lowest sales is relatively gradual, implying a broad dispersion in platform sales performance.

These insights convey pivotal information regarding sales trends, disparities across different sales regions, and variability among platforms, ultimately providing a thorough overview of the international gaming market's complex landscape.

