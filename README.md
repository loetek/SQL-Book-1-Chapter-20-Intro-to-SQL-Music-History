# SQL-Book-1-Chapter-20-Intro-to-SQL-Music-History
(Done) Some exercises to learn about using SQL. 

Instructions
Using the Object Explorer in SSMS, examine the tables, columns, and foreign keys of the database.
Using the dbdiagram.io site, create an ERD for the database.
For each of the following exercises, provide the appropriate query. Yes, even the ones that are expressed in the form of questions. Everything from class and the references listed above is fair game.

Query all of the entries in the Genre table

Using the INSERT statement, add one of your favorite artists to the Artist table.

Using the INSERT statement, add one, or more, albums by your artist to the Album table.

Using the INSERT statement, add some songs that are on that album to the Song table.

Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

Reminder: Direction of join matters. Try the following statements and see the difference in results.

SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;
Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

Modify the previous query to also display the title of the album.
