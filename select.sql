SELECT nameAlbum, YearOfCreation FROM ListAlbum WHERE YearOfCreation = '2018';
SELECT nameTrack, trackDuration FROM ListTrack WHERE trackDuration = (SELECT MAX(trackDuration) FROM ListTrack);
SELECT nameTrack FROM ListTrack WHERE trackDuration >= '00:03:30';
SELECT NameCollection FROM TrackCollection WHERE YearsOfCreation BETWEEN '2018-01-01' AND '2020-12-31';
SELECT nameMusiciant FROM ListMusiciant WHERE nameMusiciant NOT LIKE '% %';
SELECT nameTrack FROM ListTrack WHERE nameTrack LIKE '%мой%' OR nameTrack LIKE '%my%';