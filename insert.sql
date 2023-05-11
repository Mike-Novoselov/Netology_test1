INSERT INTO ListGenre (NameGenre) VALUES ('рок'), ('метал'), ('панк'), ('фолк'), ('поп');

INSERT INTO ListMusiciant (nameMusiciant) VALUES
('AC/DC'), ('Metallica'), ('Green Day'), ('Bob Dylan'), ('Madonna'), ('Queen'), ('Nirvana'), ('The Beatles');

INSERT INTO GenreMusician (idMusicant, idGenere) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 1), (7, 1), (8, 1),
(2, 1), (3, 1), (3, 2), (4, 5), (5, 5), (6, 5), (7, 2), (8, 2),
(1, 1), (1, 2), (1, 5), (2, 1), (2, 2), (2, 5), (3, 1), (3, 3);

INSERT INTO ListAlbum (nameAlbum, YearOfCreation) VALUES
('Highway to Hell', '1979-07-27'), ('Master of Puppets', '1986-03-03'), ('Dookie', '1994-02-01'),
('Blonde on Blonde', '1966-05-16'), ('Like a Virgin', '1984-11-12'), ('A Night at the Opera', '1975-11-21'),
('Nevermind', '1991-09-24'), ('Abbey Road', '1969-09-26');

INSERT INTO ListAlbumMusiciant (idMusican, idAlbum) VALUES
(1, 1), (1, 6), (1, 8), (2, 2), (2, 8), (3, 3), (3, 7), (4, 4), (5, 5), (6, 6), (7, 7), (8, 1), (8, 3), (8, 4);

INSERT INTO ListTrack (nameTrack, trackDuration, idAlbum) VALUES
('Highway to Hell', '03:29', 1), ('Girls Got Rhythm', '03:24', 1), ('Bohemian Rhapsody', '05:55', 6),
('Master of Puppets', '08:36', 2), ('Orion', '08:27', 2), ('Welcome Home (Sanitarium)', '06:28', 2),
('Basket Case', '03:03', 3), ('When I Come Around', '02:58', 3), ('Longview', '03:59', 3),
('Rainy Day Women #12 & 35', '04:36', 4), ('Visions of Johanna', '07:33', 4), ('I Want You', '03:07', 4),
('Like a Virgin', '03:35', 5), ('Material Girl', '04:00', 5), ('Papa Don''t Preach', '04:29', 5),
('Bohemian Rhapsody', '05:55', 7), ('Smells Like Teen Spirit', '05:01', 7), ('Come as You Are', '03:39', 7),
('Come Together', '04:20', 8), ('Something', '03:03', 8), ('Here Comes the Sun', '03:05', 8);

INSERT INTO TrackCollection (NameCollection, YearsOfCreation) VALUES ('Best of Rock', '2021-01-01');

INSERT INTO TrackCollectionTrack (idCollection, idTrack) VALUES
(1, 1), (1, 2), (1, 6), (1, 7), (1, 8), (1, 16), (1, 17), (1, 18), (1, 19), (1, 20);

