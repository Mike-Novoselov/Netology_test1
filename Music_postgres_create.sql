CREATE TABLE ListGenre (
	idGenre serial PRIMARY KEY,
	NameGenre VARCHAR(100) NOT NULL
);

CREATE TABLE ListMusiciant (
	idMusiciant serial PRIMARY KEY,
	nameMusiciant VARCHAR(100) NOT NULL
);

CREATE TABLE GenreMusician (
	idMusicant integer NOT NULL REFERENCES ListMusiciant(idMusiciant),
	idGenere integer NOT NULL REFERENCES ListGenre(idGenre),
	CONSTRAINT GenreMusician_pk PRIMARY KEY (idMusicant, idGenere)
);

CREATE TABLE ListAlbum (
	idAlbum serial PRIMARY KEY,
	nameAlbum VARCHAR(255) NOT NULL,
	YearOfCreation DATE NOT NULL
);

CREATE TABLE ListAlbumMusiciant (
	idMusican integer NOT NULL REFERENCES ListMusiciant(idMusiciant),
	idAlbum integer NOT NULL REFERENCES ListAlbum(idAlbum),
	CONSTRAINT ListAlbumMusiciant_pk PRIMARY KEY (idMusican, idAlbum)
);

CREATE TABLE ListTrack (
	idTrack serial PRIMARY KEY,
	nameTrack VARCHAR(100) NOT NULL,
	trackDuration TIME NOT NULL,
	idAlbum integer NOT NULL REFERENCES ListAlbum(idAlbum)
);

CREATE TABLE TrackCollection (
	idCollection serial PRIMARY KEY,
	NameCollection VARCHAR(255) NOT NULL,
	YearsOfCreation DATE NOT NULL
);
