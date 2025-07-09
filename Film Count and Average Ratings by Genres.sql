/*
IMDb Insight: The Evolution of Cinema through Data
Popularity and Quality by Genre:
Compares whether action, documentary, comedy, etc., tend to get higher ratings.
title_basics, title_ratings
Bar Chart
*/

SELECT b.genres, COUNT(*) AS filmCount, AVG(CAST(r.averageRating AS FLOAT)) AS avgRating
FROM title_basics b JOIN title_ratings r 
ON b.tconst = r.tconst
WHERE b.genres IS NOT NULL
GROUP BY b.genres
ORDER BY avgRating DESC;