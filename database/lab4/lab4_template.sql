/* 
   Student Name: Peng Wang
   Student Number: 041094691
   Course Section: section_30x
*/

/* Q1. (user) Write a query that displays the first name, last name, birthday,
   age (calculated based on the current date), phone number, email, and country
   of origin for all users whose birthdays are in the current month.
   Note: The query must get the current month dynamically, i.e.
   if executed in January, the query should display birthdays in January,
   but if executed in February, it should display birthdays in February. */
SELECT first_name, last_name, birth_date,
  TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) AS age,
  phone_number, email, country
FROM user
WHERE MONTH(birth_date) = MONTH(NOW());

/* Q2. (play_history) Create a report that lists the number of unique users and the number of
   plays (name it “plays”) for each date (year, month, and date) with more than 35 users.
   Sort the results by “plays” in descending order. */
SELECT DATE(start_time) as date, COUNT(user_id) AS unique_users, SUM(1) AS plays
FROM play_history
group by date
HAVING unique_users > 35
ORDER BY plays DESC;

/* Q3. (play_history) Create a report that lists the number of plays (name this column “plays”)
   and the number of unique songs (name this column “songs”) per month and genre_id.
   Sort the results chronologically, and then by genre_id. */

SELECT DATE(start_time) AS month, genre_id,
  COUNT(*) AS plays, COUNT(DISTINCT song_id) AS songs
FROM play_history
GROUP BY month, genre_id
ORDER BY month, genre_id;

/* Q4. (song) Write a query that displays the number of songs per genre and release year, along with the
   average of their duration and the total duration of these songs.
   Round the average to display it as an integer value.
   Sort the results so records with the most songs are displayed first. */
SELECT genre_id, release_year, COUNT(*) AS num_songs,
  ROUND(AVG(duration)) AS avg_duration,
  SUM(duration) AS total_duration
FROM song
GROUP BY genre_id, release_year
ORDER BY num_songs DESC;

/* Q5. (artist) Write a query that displays the top 4 genres with the most artists. */

SELECT name, COUNT(*) AS num_artists
FROM artist
GROUP BY name
ORDER BY num_artists DESC
LIMIT 4;

/* Q6. (user) Create a report that displays the number of users (name it "users") per country and the type of plan they subscribed to.
   Sort the results so "Premium" plans appear at the top, along with the highest number of users. */
SELECT country, plan, COUNT(*) AS users
FROM user
GROUP BY country, plan
ORDER BY plan DESC, users DESC;

/* Q7. (play_history) Write a query that displays the top 5 most active users, i.e.,
   users who listened to music the most (name it "plays") in November 2022.
   Also display the number of songs that these users listened to. */
SELECT user_id, COUNT(*) AS plays, COUNT(DISTINCT song_id) AS unique_songs
FROM play_history
WHERE start_time >= '2022-11-01' AND start_time < '2022-12-01'
GROUP BY user_id
ORDER BY plays DESC
LIMIT 5;

/* Q8. (play_history) Display the ID and number of plays ("plays") of the top 10 songs on Algonquify. */
SELECT song_id, COUNT(*) AS plays
FROM play_history
GROUP BY song_id
ORDER BY plays DESC
LIMIT 10;

/* Q9. (song) Using the IDs of the top 10 songs from the previous query, display the title, genre_id,
   artist_id, and duration (in minutes and seconds - name this column "duration_minutes") of the 3 
   most played songs on our music streaming service.

   Note: For this query you will have to convert duration (in seconds) to 
   minutes and seconds. Knowing that 60s = 1minute, a song that lasts 132s, for
   example. should be displayed as "2:12". */
SELECT
  artist_id,
  COUNT(*) AS plays,
  COUNT(DISTINCT song_id) AS songs
FROM play_history
WHERE
  artist_id IS NOT NULL
  AND MONTH(start_time) = 12
  AND YEAR(start_time) = 2022
GROUP BY artist_id
ORDER BY plays DESC
LIMIT 7;

/* Q10. (play_history) Create a report of the 7 most listened to artists on Algonquify
   in December 2022, also showing the number of plays (name it "plays") and the number 
   of unique songs (name it "songs") by each artist that were played in this period. */
SELECT user_id AS artist_name, COUNT(*) AS plays, COUNT(DISTINCT song_id) AS songs
FROM play_history
WHERE start_time >= '2022-12-01' AND start_time < '2023-01-01'
GROUP BY user_id
ORDER BY plays
LIMIT 5;

/* Q11. (play_history) List the top 5 users who listened to the most unique genres
   in the year 2022. Sort the results by the number of unique genres. */
SELECT user_id, COUNT(genre_id) AS num_genres
FROM play_history p
WHERE YEAR(start_time) = 2022
GROUP BY user_id
ORDER BY num_genres -- DESC
LIMIT 5;

/* Q12. (user) Using the IDs of the top 5 users from the previous query, display
   the first name, last name, email, country and plan of the 5 most eclectic
   users. */
SELECT u.first_name, u.last_name, u.email, u.country, u.plan
FROM user u
WHERE u.id IN (
    SELECT user_id
    FROM (
        SELECT user_id, COUNT(DISTINCT genre_id) AS num_genres
        FROM play_history p
        WHERE YEAR(start_time) = 2022
        GROUP BY user_id
        ORDER BY num_genres DESC
        LIMIT 5
    ) AS top_top
)
ORDER BY (
    SELECT COUNT(DISTINCT genre_id)
    FROM play_history
    WHERE user_id = u.id
        AND YEAR(start_time) = 2022
) DESC
LIMIT 5;