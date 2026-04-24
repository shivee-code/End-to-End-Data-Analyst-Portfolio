-- STEP 1: Select the database
USE netflix_project;

-- =================================================================================
-- KPI & TREND ANALYSIS
-- =================================================================================

## PROBLEM STATEMENT 1: Content Mix Analysis
-- Determine the total count and percentage of Movies vs TV Shows to understand platform strategy.
SELECT 
    type, 
    COUNT(*) AS total_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM netflix_raw_data), 2) AS percentage
FROM netflix_raw_data
GROUP BY type;

-- ---------------------------------------------------------------------------------

## PROBLEM STATEMENT 2: Global Content Leaders
-- Identify the top 10 countries producing content to see where Netflix invests most.
SELECT 
    country, 
    COUNT(*) AS total_content
FROM netflix_raw_data
WHERE country <> 'Unknown'
GROUP BY country
ORDER BY total_content DESC
LIMIT 10;

-- ---------------------------------------------------------------------------------

## PROBLEM STATEMENT 3: Content Addition Trend (Advanced Growth Metric)
-- Calculate the number of titles added each year and the running total to visualize growth.
SELECT 
    YEAR(date_added) AS year_added,
    COUNT(*) AS count_per_year,
    SUM(COUNT(*)) OVER (ORDER BY YEAR(date_added)) AS cumulative_total
FROM netflix_raw_data
WHERE date_added IS NOT NULL
GROUP BY year_added
ORDER BY year_added;

-- ---------------------------------------------------------------------------------

## PROBLEM STATEMENT 4: Genre Popularity Index
-- Find which genres (listed_in) have the highest volume of content.
SELECT 
    listed_in AS genre, 
    COUNT(*) AS total_titles
FROM netflix_raw_data
GROUP BY genre
ORDER BY total_titles DESC
LIMIT 10;

-- ---------------------------------------------------------------------------------

## PROBLEM STATEMENT 5: The "Golden Era" Analysis
-- Find which release years have the most content currently available on Netflix.
SELECT 
    release_year, 
    COUNT(*) AS title_count
FROM netflix_raw_data
GROUP BY release_year
ORDER BY title_count DESC
LIMIT 10;

-- ---------------------------------------------------------------------------------

## PROBLEM STATEMENT 6: Maturity Rating Distribution
-- Analyze the distribution of ratings (PG, TV-MA, etc.) to identify the target audience.
SELECT 
    rating, 
    type, 
    COUNT(*) AS count
FROM netflix_raw_data
GROUP BY rating, type
ORDER BY count DESC;
