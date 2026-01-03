use project_movie_database;

select * 
from directors;

select *
from movies;

-- a) Can you get all data about movies?
select *
from movies;

-- b) How do you get all data about directors?
select * 
from directors;

-- c) Check how many movies are present in IMDB.
select count(id) as total_movies
from movies;

-- d) Find these 3 directors: James Cameron, Luc Besson, John Woo
select *
from directors
where name in ("James Cameron", "Luc Besson", "John Woo");

-- e) Find all directors with name starting with S
select *
from directors
where name like "s%";

-- f) Count female directors
select count(*) as Total_female
from directors
where gender = 1;

-- g) Find the name of the 10th first women director
select name
from directors
where gender = 1
order by id
limit 10;

-- h) What are the 3 most popular movies?
SELECT title, popularity
FROM movies
ORDER BY popularity DESC
LIMIT 3;

-- i) What are the 3 most bankable movies?
SELECT title, revenue
FROM movies
ORDER BY revenue DESC
LIMIT 3;

-- j) What is the most awarded average vote since January 1st, 2000?
SELECT title, vote_average
FROM movies
WHERE release_date >= '2000-01-01'
ORDER BY vote_average DESC
LIMIT 1;

-- k) Which movie(s) were directed by Brenda Chapman?
SELECT m.title
FROM movies m
JOIN directors d
ON m.director_id = d.id
WHERE d.name = 'Brenda Chapman';

-- l) Which director made the most movies?
SELECT d.name, COUNT(m.id) AS total_movies
FROM directors d
JOIN movies m
ON d.id = m.director_id
GROUP BY d.name
ORDER BY total_movies DESC
LIMIT 1;

-- m) Which director is the most bankable?
SELECT d.name, SUM(m.revenue) AS total_revenue
FROM directors d
JOIN movies m
ON d.id = m.director_id
GROUP BY d.name
ORDER BY total_revenue DESC
LIMIT 1;