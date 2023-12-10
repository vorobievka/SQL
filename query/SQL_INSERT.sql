INSERT INTO public.artist
("name")
VALUES('best artist1');

INSERT INTO public.artist
("name")
VALUES('artist2');

INSERT INTO public.artist
("name")
VALUES('good artist3');

INSERT INTO public.artist
("name")
VALUES('artist4');  


INSERT INTO public.genre
("title")
VALUES('Pop');

INSERT INTO public.genre
("title")
VALUES('Rock');

INSERT INTO public.genre
("title")
VALUES('Jazz');

INSERT INTO public.genre
("title")
VALUES('Trot');


INSERT INTO public.album
(title, "year")

VALUES('album1', 2020);

INSERT INTO public.song
("name", duration, album_id)
VALUES('song1_1', 192, 1);

INSERT INTO public.song
("name", duration, album_id)
VALUES('song2_1', 112, 1);

INSERT INTO public.song
("name", duration, album_id)
VALUES('song3_1', 162, 1);


INSERT INTO public.album
(title, "year")
VALUES('album2', 2019);

INSERT INTO public.song
("name", duration, album_id)
VALUES('my_song1_2', 295, 2);

INSERT INTO public.song
("name", duration, album_id)
VALUES('song2_2', 225, 2);


INSERT INTO public.album
(title, "year")
VALUES('album3', 2005);

INSERT INTO public.song
("name", duration, album_id)
VALUES('song1_3', 142, 3);

INSERT INTO public.song
("name", duration, album_id)
VALUES('song2_3', 252, 3);


INSERT INTO public.album
(title, "year")
VALUES('album4', 2015);

INSERT INTO public.song
("name", duration, album_id)
VALUES('song1_4', 442, 4);

INSERT INTO public.song
("name", duration, album_id)
VALUES('song2_4', 352, 4);


INSERT INTO public.collection
(title, "year")
VALUES('collection1', 2015);

INSERT INTO public.collection
(title, "year")
VALUES('collection2', 2017);

INSERT INTO public.collection
(title, "year")
VALUES('collection3', 2017);

INSERT INTO public.collection
(title, "year")
VALUES('collection4', 2020);


INSERT INTO public.catalog_song
(song_id, collection_id)
VALUES(1, 1);

INSERT INTO public.catalog_song
(song_id, collection_id)
VALUES(2, 1);

INSERT INTO public.catalog_song
(song_id, collection_id)
VALUES(3, 2);

INSERT INTO public.catalog_song
(song_id, collection_id)
VALUES(4, 2);

INSERT INTO public.catalog_song
(song_id, collection_id)
VALUES(5, 3);

INSERT INTO public.catalog_song
(song_id, collection_id)
VALUES(6, 3);


INSERT INTO public.catalog_song
(song_id, collection_id)
VALUES(7, 1);

INSERT INTO public.catalog_song
(song_id, collection_id)
VALUES(8, 3);


INSERT INTO public.catalog_artist
(artist_id, genre_id)
VALUES(1, 1);
INSERT INTO public.catalog_artist
(artist_id, genre_id)
VALUES(1, 2);

INSERT INTO public.catalog_artist
(artist_id, genre_id)
VALUES(2, 2);

INSERT INTO public.catalog_artist
(artist_id, genre_id)
VALUES(3, 3);

INSERT INTO public.catalog_artist
(artist_id, genre_id)
VALUES(4, 4);


INSERT INTO public.catalog_album
(artist_id, album_id)
VALUES(1, 1);

INSERT INTO public.catalog_album
(artist_id, album_id)
VALUES(2, 2);

INSERT INTO public.catalog_album
(artist_id, album_id)
VALUES(3, 3);

INSERT INTO public.catalog_album
(artist_id, album_id)
VALUES(4, 4);
