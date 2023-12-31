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

# Assignment Activity 5

## General Trend and Regional Sales Dynamics

**Global Sales (p1)**
- The global sales of turtle products showed significant growth from around 1990, peaking prominently in the early 2000s (specifically around 2005-06) with close to 70 in sales units.
- Post-peak, a general, gentle downward trend was observed, notably from 2008 onwards.
- No distinct cyclic pattern was observed as sales hovered consistently between 0-30 units across years, barring the peak period.

**Regional Sales (p2)**
- North American (NA) Sales exhibited a peculiar pattern compared to other regions. There was a discernible higher sales peak between 0-3 units in the earlier years, indicating an early adoption or popularity of products in this region. This difference normalized with time, becoming more aligned with other regions.
- The most striking peak in all regions was in 2006-07, while the lowest sales across regions were recorded around 2015.

**Sales across Genres (p3)**
- Genres played a varying role in sales dynamics:
  - The Fighting genre showcased the highest median sales, pointing towards a consistent and potentially loyal customer base.
  - Sports genre demonstrated high variability in sales, hinting at potential dependence on seasonal or annual factors (like sports events).
  - Sales in the Platform genre showed variability, possibly indicating fluctuating consumer interest or market competition.
- Notably, consistent sales in the Fighting genre might offer a stable market, while erratic sales in genres like Sports and Platform might require strategic marketing during peak interest periods.

**Correlation Analysis (p4)**
- NA Sales exhibited a robust positive correlation with Global Sales, potentially highlighting that NA is a significant contributor to global sales figures.
- EU Sales also showed a positive correlation with Global Sales but not as strong as NA, indicating that while it is a vital market, it may not impact global figures as strongly as the NA market.
- No negative correlations were observed, signalling that increases in regional sales tend to correspond with upticks in global sales.

**Statistical Analysis: Skewness and Kurtosis**
- All sales data (Global, NA, and EU) showed a significant positive skewness (Global: 4.03, NA: 4.29, EU: 4.8) and high kurtosis (Global: 29.45, NA: 28.19, EU: 41.44).
- This pronounced skewness indicates that the sales data have a long right tail, implying a few periods with exceptionally high sales, which is coherent with the peaks observed in the early 2000s.
- The high kurtosis, particularly in the EU Sales, suggests the presence of outliers or periods of extremely high sales, which could align with the identified peaks.

# Assignment Activity 6

- The previously utilized model discerns a potent relationship between NA, EU, and global video game sales, providing a data-driven foundation for short-term global sales forecasting based on NA and EU sales.
- With Turtle Games' diverse product range and global footprint, a tailored approach for different product categories and regional preferences, informed by this predictive model, could sharpen marketing and stocking strategies.

## Low Effort + High Impact

### 1. Leverage Regional Predictability

Capitalising on the strong correlation between NA, EU, and global sales with strategic, yet budget-friendly marketing initiatives like email campaigns or regional online ads can yield significant results.

### 2. Seasonality Adjustments

Modifying marketing and stock levels based on historical seasonal trends can be implemented with minimal effort and may yield immediate impacts.

### 3. Strategic Use of Segmentation Insights

Tailoring communication and offers to existing customer segments can be enacted swiftly, utilizing current data and communication channels.

## Moderate Effort + High Impact

### 1. Unified Strategy Across Departments

Ensuring collaboration among marketing, sales, and supply chain teams does not necessarily demand a high budget but requires meticulous planning and consistent communication.

### 2. Optimized Inventory Management

Aligning inventory with predictive insights could require an adjustment in procurement strategies but may not necessitate a substantial budgetary increase.

## High Effort + High Impact

### 1. Data Expansion in Modeling

Incorporating external factors into predictive models may necessitate additional data sourcing, expertise, and possibly technology, implicating a higher effort and budget.

### 2. Product Category Analysis

Conducting a thorough analysis per product category implies deeper research across various SKUs, necessitating dedicated resources and potentially new analytical tools.

### 3. Adopt Advanced Modeling Techniques

Implementing machine learning algorithms and enhancing modelling capabilities will likely require investing in technology and expertise, signalling high effort and potentially high budget.

# Recommendations Summary

Ensuring a balance between immediate, low-effort actions and longer-term, high-effort initiatives will be pivotal. While leveraging existing data and predictive insights can provide quick wins, strategic investments in advanced modeling and analysis will fortify Turtle Games' capability to navigate future market dynamics proficiently and sustainably. This stratified approach ensures that Turtle Games can achieve short-term gains while progressively building towards a robust, data-informed future, balancing immediate results with sustained, scalable impact.

