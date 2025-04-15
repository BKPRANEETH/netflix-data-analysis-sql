-- Netflix SQL Analysis

-- Top 10 genres
SELECT listed_in AS genre, COUNT(*) AS total
FROM netflix_titles
GROUP BY genre
ORDER BY total DESC
LIMIT 10;

-- Movies vs TV Shows
SELECT type, COUNT(*) AS count
FROM netflix_titles
GROUP BY type;

-- Content released per year
SELECT release_year, COUNT(*) AS total
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year DESC;

-- Country-wise content distribution
SELECT country, COUNT(*) AS total
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total DESC
LIMIT 10;
