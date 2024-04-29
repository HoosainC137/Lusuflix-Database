--Create database LusuFlix
Create database LusuFlix;

--Create admin role for Sales Manager as well as login
use LusuFlix;
create login SalesManager with password='20231803';
create user Manager for login SalesManager;

Grant connect to Manager;

--create table
use Lusuflix;
CREATE TABLE movies (
  movie_id INT PRIMARY KEY,
  title VARCHAR(255),
  stock INT,
  daily_rental_rate DECIMAL(8, 2)
);
select * from movies

--insert data into movies table
INSERT INTO movies (movie_id, title, stock, daily_rental_rate)
VALUES 
(1, 'Spiderman: Across the Spiderverse', 20, 80.00),
(2, 'Transformers: Rise Of The Beats', 15, 70.00),
(3, 'John Wick: Chapter 4', 17, 65.00),
(4, 'The Popes Exorcist', 12, 50.00),
(5, 'Fast X', 8, 30.00);


--Grant SalesManager Permissions
GRANT SELECT, INSERT, Delete,UPDATE ON movies TO Manager;

--Update movies
UPDATE movies
SET stock = 25, daily_rental_rate = 80.00
WHERE movie_id = 1;

--Delete Movies
DELETE FROM movies WHERE movie_id = 5;