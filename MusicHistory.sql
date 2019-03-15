--1)Using the Object Explorer in SSMS, examine the tables, columns, and foreign keys of the database.
--2)Using the dbdiagram.io site, create an ERD for the database.
--For each of the following exercises, provide the appropriate query. Yes, even the ones that are expressed in the form of questions. Everything from class and the references listed above is fair game.


--Query all of the entries in the Genre table
 SELECT
   Label
FROM Genre;


--Using the INSERT statement, add one of your favorite artists to the Artist table.
Insert Into Artist (ArtistName,YearEstablished) Values ('Jeff Buckley', '1995');
Select * from Artist;


--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
Insert Into Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) Values ('Grace','01/01/1994',52,'Columbia', 31 , 2 );
Select * from Album;

--Using the INSERT statement, add some songs that are on that album to the Song table.
Insert Into Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) Values ('Mojo Pin', 5, '01/01/1994', 2 , 31, 31);
Insert Into Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) Values ('Grace', 5, '01/01/1994', 2 , 31, 31);
Insert Into Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) Values ('Last Goodbye', 6, '01/01/1994', 2 , 31, 31);
Insert Into Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) Values ('Lilac Wine', 4, '01/01/1994', 2 , 31, 31)
Insert Into Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) Values ('Hallelujah', 9, '01/01/1994', 2 , 31, 31);


--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in.
--Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
--Reminder: Direction of join matters. Try the following statements and see the difference in results.

--SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.ArtistId
Select a.Title, s.Title, ar.ArtistName From Album a
Left Join Song s On s.Albumid = a.id
Left Join Artist ar On ar.id = a.ArtistId
Where a.ArtistId = 31;


--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
Select a.Title, Count (s.Title) As 'Total Songs from Albums' From Album a
Left Join Song s On s.AlbumId = a.Id
Group By a.Title;


--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
Select ar.ArtistName, Count (s.Title) As 'Total Songs from Artist' From Artist ar
Left Join Song s On s.ArtistId = ar.Id
Group By ar.ArtistName;


--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
Select g.Label, Count (s.Title) As 'Total Songs in Genres' From Genre g
Left Join Song s On s.GenreId = g.Id
Group By g.Label;

--Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
Select a.Title, Max(a.AlbumLength) As 'Longest Album' From Album a
Group by a.Title;

--Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
Select s.Title, Max(s.SongLength) As 'Longest Song' From Song s
Group By s.Title;

--Modify the previous query to also display the title of the album.