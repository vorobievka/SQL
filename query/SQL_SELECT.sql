--Task 2--

SELECT name, duration 
FROM public.song 
WHERE duration = (SELECT MAX(duration) FROM public.song);

SELECT name, duration 
FROM public.song 
WHERE duration > 210;

SELECT title 
FROM public.collection 
WHERE year >= 2018 AND year <=2020;

SELECT name 
FROM public.artist 
WHERE name NOT LIKE '_% %_';

SELECT name 
FROM public.song 
WHERE name LIKE '%my%';


--Task 3--

SELECT title, artist_count  
FROM public.genre g
LEFT JOIN (
SELECT genre_id, COUNT(artist_id) as artist_count
FROM public.catalog_artist
GROUP BY genre_id) a 
ON a.genre_id = g.id;

SELECT title, song_count  
FROM public.album g
LEFT JOIN (
SELECT album_id, COUNT(id) as song_count
FROM public.song
GROUP BY album_id) a 
ON a.album_id = g.id
WHERE g.year >= 2019 and g.year <= 2020;

SELECT title, avg_duration  
FROM public.album g
LEFT JOIN (
SELECT album_id, AVG(duration) as avg_duration, COUNT(id) as song_count
FROM public.song
GROUP BY album_id) a 
ON a.album_id = g.id;

SELECT a.year, a2.name
FROM public.album a 
LEFT JOIN public.catalog_album ca on ca.album_id = a.id 
LEFT JOIN public.artist a2 on a2.id = ca.artist_id 
WHERE a.year <> 2020;

SELECT DISTINCT a.name, c.title 
FROM public.artist a 
LEFT JOIN public.catalog_album ca ON a.id = ca.artist_id 
LEFT JOIN public.album a2 ON ca.album_id = a2.id 
LEFT JOIN public.song s ON a2.id = s.album_id 
LEFT JOIN public.catalog_song cs ON s.id = cs.song_id 
LEFT JOIN public.collection c ON cs.collection_id = c.id 
WHERE a.name = 'artist2';
