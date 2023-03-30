select g.genre_id, g.genre_name as "Название жанра", count(ag.artist_id) as "Количество исполнителей" from artist_genres ag
join genre g  on g.genre_id = ag.genre_id 
group by g.genre_id


select count(t.track_id) as "Количество треков"from track t 
join album a  on a.album_id = t.album_id  
where a.release_year  between 2019 and 2020


select a.album_name as "Название альбома", avg(t.track_lengths) as "Средняя продолжительность" from track t
join album a on a.album_id =t.album_id 
group by a.album_name 


select artist_name from artist a
where artist_name not in (select a3.artist_name from album a2 
join album_artist aa on a2.album_id =aa.album_id 
join artist a3 on a3.artist_id =aa.artist_id 
where release_year = 2020)


select c.collection_name as "Название сборника", t.track_name as "Название трека", a2.artist_name "Исполнитель"  from collection c
join track_collection tc on tc.collection_id =c.collection_id 
join track t on t.track_id =tc.track_id 
join album a on a.album_id =t.album_id 
join album_artist aa on aa.album_id =a.album_id 
join artist a2 on a2.artist_id =aa.artist_id 
where a2.artist_name = 'JONY'


select distinct album_name from album a 
join album_artist aa ON aa.album_id =a.album_id 
join artist a2 on a2.artist_id =aa.artist_id 
join artist_genres ag on ag.artist_id =a2.artist_id 
group by a.album_name, a2.artist_id 
having count(ag.genre_id)>1


select t.track_name as "Название трека" from track t
full join track_collection tc on t.track_id =tc.track_id 
where tc.collection_id is null


select a.artist_name as "Исполнитель", t.track_lengths as "Продолжительность трека"  from artist a 
join album_artist aa on aa.artist_id =a.artist_id 
join album a2 on a2.album_id =aa.album_id 
join track t on t.album_id =a2.album_id
where t.track_lengths = (select min(track_lengths) from track)


select a.album_name as "Название альбома" from album a 
join track t on t.album_id =a.album_id 
group by a.album_name 
having count(t.track_id) = (select count(t.track_id) from track t 
group by t.album_id 
order by 1
limit 1)
