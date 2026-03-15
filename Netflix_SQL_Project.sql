CREATE TABLE netflix_titles (
show_id TEXT,
typee TEXT,
title TEXT,
director TEXT,
cast1 TEXT,
country TEXT,
date_added TEXT,
release_year INT,
rating TEXT,
duration TEXT,
listed_in TEXT,
year_added BIGINT,
month_added	INT
);

SELECT * FROM netflix_titles;


--Movies vs TV Shows Distribution
SELECT typee, COUNT(*) AS total
FROM netflix_titles
GROUP BY typee;


--Top Countries Producing Netflix Content
SELECT country, COUNT(*) AS total
FROM netflix_titles
GROUP BY country
ORDER BY total DESC
LIMIT 10;


--Growth of Netflix Content Over the Years
SELECT release_year, COUNT(*) AS total_content
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year;


--Most Common Content Ratings
SELECT rating, COUNT(*) AS total
FROM netflix_titles
GROUP BY rating
ORDER BY total DESC;


--Most Popular Genres
SELECT listed_in, COUNT(*) AS total
FROM netflix_titles
GROUP BY listed_in
ORDER BY Total DESC
LIMIT 10;

--Content Release Trends
SELECT release_year, COUNT(*) AS total
FROM netflix_titles
GROUP BY release_year
ORDER BY total DESC;




