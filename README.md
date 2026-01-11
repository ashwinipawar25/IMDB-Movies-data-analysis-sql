# 🎬 IMDB Movies Data Analysis - SQL Project

## 📌 Project Overview

Project Title: IMDB Movie Database Analysis<br>
Level: Beginner/Intermediate<br>
Database: project_movie_database<br>

This project demonstrates SQL skills applied to an IMDB movie database. It includes analysis of movies, directors, and related metrics using SQL queries to generate business insights and answer common data questions. This project is ideal for beginners and aspiring data analysts looking to practice SQL with a real-world dataset.

## 🎯 Objectives

Database Setup: Connect and explore the IMDB movie database.

Data Exploration: Understand tables directors and movies.

Data Analysis: Write SQL queries to answer specific business questions.

Insights Generation: Identify trends, top directors, popular movies, and other insights.

Data Visualization Prep: Prepare query outputs for visualization in tools like Power BI or Tableau.

Portfolio Showcase: Demonstrate SQL proficiency for data analyst roles.

🧩 Tables
1. directors

Columns: id, name, gender, birth_date, other relevant columns

2. movies

Columns: id, title, director_id, release_date, popularity, revenue, vote_average, vote_count, etc.

🔍 Sample Queries & Analysis
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

🔍 Key Insights

Director Analysis: Top directors by movie count, revenue, and average ratings.

Movie Popularity: Most popular and highest-grossing movies identified.

Female Directors: Analysis on gender distribution.

Awarded Movies: Highest voted movies since 2000.

Visualization Ready: Query outputs can be used in charts and dashboards.

🧠 Skills Demonstrated

SQL Aggregations

Joins & Subqueries

Window Functions

Data Filtering & Ranking

Exploratory Data Analysis (EDA)

Business Insight Generation

Preparing data for visualization tools (Power BI / Tableau)

🧰 Tools Used

MySQL / SQL Server

GitHub

Optional: Power BI / Tableau

Conclusion

This project showcases SQL queries on the IMDB dataset, covering exploration, analysis, and insight generation. It demonstrates real-world applications of SQL in data analysis, preparing outputs for visualization and decision-making.

Author

Ashwini Pawar
Email: 2005ashwinipawar@gmail.com
GitHub: ashwinipawar25

This project is part of my portfolio, highlighting essential SQL skills for data analyst roles. For questions, feedback, or collaboration, feel free to reach out!

