INSERT INTO public.artist
("name")
VALUES
('best artist1'),
('artist2'),
('good artist3'),
('artist4');


INSERT INTO public.genre
("title")
VALUES
('Pop'),
('Rock'),
('Jazz'),
('Trot');


INSERT INTO public.album
(title, "year")
VALUES('album1', 2020);

INSERT INTO public.song
("name", duration, album_id)
VALUES
('song1_1', 192, 1),
('song2_1', 112, 1),
('song3_1', 162, 1);


INSERT INTO public.album
(title, "year")
VALUES('album2', 2019);

INSERT INTO public.song
("name", duration, album_id)
VALUES
('my_song1_2', 295, 2),
('song2_2', 225, 2);


INSERT INTO public.album
(title, "year")
VALUES('album3', 2005);

INSERT INTO public.song
("name", duration, album_id)
VALUES
('song1_3', 142, 3),
('song2_3', 252, 3);


INSERT INTO public.album
(title, "year")
VALUES('album4', 2015);

INSERT INTO public.song
("name", duration, album_id)
VALUES
('song1_4', 442, 4),
('song2_4', 352, 4);


INSERT INTO public.collection
(title, "year")
VALUES
('collection1', 2015),
('collection2', 2017),
('collection3', 2017),
('collection4', 2020);


INSERT INTO public.catalog_song
(song_id, collection_id)
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 1),
(8, 3);


INSERT INTO public.catalog_artist
(artist_id, genre_id)
VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 4);


INSERT INTO public.catalog_album
(artist_id, album_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);
