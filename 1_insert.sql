# Заполнение таблицы ListGenre:
INSERT INTO ListGenre (NameGenre) VALUES 
('рок'),
('метал'),
('панк'),
('фолк'),
('поп');

# Заполнение таблицы ListMusiciant:
INSERT INTO ListMusiciant (nameMusiciant) VALUES 
('Metallica'),
('AC/DC'),
('Green Day'),
('Ed Sheeran'),
('Taylor Swift'),
('Imagine Dragons'),
('Led Zeppelin'),
('The Beatles');

# Заполнение таблицы GenreMusician (связь исполнителей с жанрами):
INSERT INTO GenreMusician (idMusicant, idGenere) VALUES 
(1, 2),
(1, 1),
(2, 1),
(2, 2),
(3, 3),
(3, 1),
(4, 5),
(5, 5),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 4);

# Заполнение таблицы ListAlbum:
INSERT INTO ListAlbum (nameAlbum, YearOfCreation) VALUES 
('Master of Puppets', '1986-03-03'),
('Back in Black', '1980-07-25'),
('American Idiot', '2004-09-20'),
('÷', '2017-03-03'),
('1989', '2014-10-27'),
('Night Visions', '2012-09-04'),
('Led Zeppelin IV', '1971-11-08'),
('Abbey Road', '1969-09-26');

# Заполнение таблицы ListAlbumMusiciant (связь исполнителей с альбомами):
INSERT INTO ListAlbumMusiciant (idMusican, idAlbum) VALUES 
(1, 1),
(1, 2),
(2, 2),
(2, 1),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

# Заполнение таблицы ListTrack:
INSERT INTO ListTrack (nameTrack, trackDuration, idAlbum) VALUES 
('Battery', '05:12', 1),
('Master of Puppets', '08:36', 1),
('Hells Bells', '05:12', 2),
('Back in Black', '04:15', 2),
('American Idiot', '02:54', 3),
('Boulevard of Broken Dreams', '04:20', 3),
('Shape of You', '03:53', 4),
('Castle on the Hill', '04:21', 4),
('Shake It Off', '03:39', 5),
('Blank Space', '03:51', 5),
('Radioactive', '03:08', 6),
('Demons', '02:57', 6),
('Stairway to Heaven', '08:02', 7),
('my Black Dog', '04:54', 7),
('Come Together', '04:19', 8),
('Here Comes the Sun', '03:05', 8);

# Заполнение таблицы TrackCollection:
INSERT INTO TrackCollection (NameCollection, YearsOfCreation) VALUES 
('Rock Anthems', '2000-01-01'),
('Metal Mayhem', '2005-06-15'),
('Pop Hits', '2010-12-31'),
('Folk Favorites', '2015-04-22'),
('Punk Rock Party', '2018-09-01'),
('Classic Rock', '2020-01-01'),
('Best of the 80s', '2021-06-15'),
('Acoustic Sessions', '2022-12-31');

# Заполнение таблицы TrackCollectionTrack (связь сборников с треками):
INSERT INTO TrackCollectionTrack (idCollection, idTrack) VALUES 
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(2, 13),
(3, 4),
(3, 7),
(3, 9),
(4, 4),
(4, 8),
(4, 14),
(5, 3),
(5, 10),
(5, 12),
(6, 7),
(6, 13),
(6, 14),
(7, 2),
(7, 7),
(7, 13),
(8, 4),
(8, 9),
(8, 12);
