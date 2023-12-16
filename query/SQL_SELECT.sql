--Task 2--

SELECT name, duration 
FROM public.song 
WHERE duration = (SELECT MAX(duration) FROM public.song);

SELECT name, duration 
FROM public.song 
WHERE duration > 210;

SELECT title 
FROM public.collection 
WHERE year BETWEEN 2018 AND 2020;

SELECT name 
FROM public.artist 
WHERE name NOT LIKE '_% %_';

SELECT name 
FROM public.song 
WHERE name iLIKE '%my%';


--Task 3--

SELECT title, COUNT(artist_id) artist_count FROM catalog_artist ca
--left join artist a on a.id = ca.artist_id 
LEFT JOIN genre g ON g.id = ca.genre_id 
GROUP BY title;

SELECT title, COUNT(s.id) as song_count FROM song s
LEFT JOIN album a ON a.id = s.album_id 
WHERE a.year BETWEEN 2019 and 2020
GROUP BY title

SELECT title, AVG(duration) as avg_duration FROM song s
LEFT JOIN album a ON a.id = s.album_id 
GROUP BY title

SELECT n.name
FROM artist n
LEFT JOIN (
SELECT distinct artist_id, year from song s 
LEFT JOIN album a ON a.id = s.album_id  
LEFT JOIN catalog_album ca ON ca.album_id = a.id 
WHERE year = 2020) q 
ON q.artist_id = n.id
WHERE q.artist_id IS NULL;

SELECT DISTINCT a.name, c.title 
FROM public.artist a 
LEFT JOIN public.catalog_album ca ON a.id = ca.artist_id 
LEFT JOIN public.album a2 ON ca.album_id = a2.id 
LEFT JOIN public.song s ON a2.id = s.album_id 
LEFT JOIN public.catalog_song cs ON s.id = cs.song_id 
LEFT JOIN public.collection c ON cs.collection_id = c.id 
WHERE a.name = 'artist2';
