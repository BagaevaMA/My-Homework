select * from album
where release_year = 2018

select t.track_name as "�������� �����", t.track_lengths as "������������ �����" from track t
order by t.track_lengths desc
limit 1 

select track_name as "�������� �����", track_lengths as "������������ �����"  from track t
where t.track_lengths  >= '00:03:30'

select collection_name as "�������� ��������", collection_release_year as "��� ������� ��������" from collection
where collection_release_year between 2018 and 2020

select * from artist
where artist_name not like '% %'

select * from track
where lower(track_name) like '%���%' or lower(track_name) like '%my%'