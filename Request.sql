select * from album
where release_year = 2018

select t.track_name as "Название трека", t.track_lengths as "Длительность трека" from track t
order by t.track_lengths desc
limit 1 

select track_name as "Название трека", track_lengths as "Длительность трека"  from track t
where t.track_lengths  >= '00:03:30'

select collection_name as "Название сборника", collection_release_year as "Год выпуска сборника" from collection
where collection_release_year between 2018 and 2020

select * from artist
where artist_name not like '% %'

select * from track
where lower(track_name) like '%мой%' or lower(track_name) like '%my%'
