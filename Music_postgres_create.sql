CREATE TABLE "public.ListGenre" (
	"idGenre" serial NOT NULL,
	"NameGenre" serial(100) NOT NULL,
	CONSTRAINT "ListGenre_pk" PRIMARY KEY ("idGenre")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.ListMusiciant" (
	"idMusiciant" serial NOT NULL,
	"nameMusiciant" serial(100) NOT NULL,
	"idGenre" serial NOT NULL,
	CONSTRAINT "ListMusiciant_pk" PRIMARY KEY ("idMusiciant")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.ListAlbum" (
	"idAlbum" serial NOT NULL,
	"nameAlbum" serial(255) NOT NULL,
	"YearOfCreation" serial NOT NULL,
	"idMusiciant" serial NOT NULL,
	CONSTRAINT "ListAlbum_pk" PRIMARY KEY ("idAlbum")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.ListTrack" (
	"idTrack" serial NOT NULL,
	"nameTrack" serial(100) NOT NULL,
	"trackDuration" serial NOT NULL,
	"idAlbum" serial NOT NULL,
	CONSTRAINT "ListTrack_pk" PRIMARY KEY ("idTrack")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.GenreMusician" (
	"idMusicant" serial NOT NULL,
	"idGenere" serial NOT NULL,
	CONSTRAINT "GenreMusician_pk" PRIMARY KEY ("idMusicant","idGenere")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.ListAlbumMusiciant" (
	"idMusican" serial NOT NULL,
	"idAlbum" serial NOT NULL,
	CONSTRAINT "ListAlbumMusiciant_pk" PRIMARY KEY ("idMusican","idAlbum")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.TrackCollection" (
	"NameCollection" VARCHAR(255) NOT NULL,
	"YearsOfCreation" TIME NOT NULL
) WITH (
  OIDS=FALSE
);





ALTER TABLE "ListAlbum" ADD CONSTRAINT "ListAlbum_fk0" FOREIGN KEY ("idAlbum") REFERENCES "ListTrack"("idAlbum");


ALTER TABLE "GenreMusician" ADD CONSTRAINT "GenreMusician_fk0" FOREIGN KEY ("idMusicant") REFERENCES "ListMusiciant"("idMusiciant");
ALTER TABLE "GenreMusician" ADD CONSTRAINT "GenreMusician_fk1" FOREIGN KEY ("idGenere") REFERENCES "ListGenre"("idGenre");

ALTER TABLE "ListAlbumMusiciant" ADD CONSTRAINT "ListAlbumMusiciant_fk0" FOREIGN KEY ("idMusican") REFERENCES "ListMusiciant"("idMusiciant");
ALTER TABLE "ListAlbumMusiciant" ADD CONSTRAINT "ListAlbumMusiciant_fk1" FOREIGN KEY ("idAlbum") REFERENCES "ListAlbum"("idAlbum");









