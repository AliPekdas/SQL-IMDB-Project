/*
IMDb Insight: The Evolution of Cinema through Data
Average IMDb Rating Over the Years:
Shows how film quality (based on ratings) has changed over time.
title_basics, title_ratings
Line Chart
*/

SELECT b.startYear, AVG(CAST(r.averageRating AS FLOAT)) AS avgRating
FROM title_basics b JOIN title_ratings r 
ON b.tconst = r.tconst
WHERE b.startYear IS NOT NULL AND b.startYear IS NOT NULL
GROUP BY b.startYear
ORDER BY b.startYear DESC;