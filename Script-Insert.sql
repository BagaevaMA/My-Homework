INSERT INTO artist(artist_name)
VALUES('������ � ���');

INSERT INTO artist(artist_name)
VALUES('JONY');

INSERT INTO artist(artist_name)
VALUES('Artik & Asti');

INSERT INTO artist(artist_name)
VALUES('����');

INSERT INTO artist(artist_name)
VALUES('�����');

INSERT INTO artist(artist_name)
VALUES('Imagine Dragons');

INSERT INTO artist(artist_name)
VALUES('Rammstein');

INSERT INTO artist(artist_name)
VALUES('��-2');

INSERT INTO genre(genre_name)
VALUES('����');

INSERT INTO genre(genre_name)
VALUES('������� ���-������');

INSERT INTO genre(genre_name)
VALUES('������� ���');

INSERT INTO genre(genre_name)
VALUES('������� ���');

INSERT INTO genre(genre_name)
VALUES('����������� ���');

INSERT INTO genre(genre_name)
VALUES('����������');

INSERT INTO album(album_name, release_year)
VALUES('���� ������', 2008);

INSERT INTO album(album_name, release_year)
VALUES('��������������', 2013);

INSERT INTO album(album_name, release_year)
VALUES('�� ����� �� ��� �����', 2022);

INSERT INTO album(album_name, release_year)
VALUES('������ �����', 1988);

INSERT INTO album(album_name, release_year)
VALUES('����� 3', 2010);

INSERT INTO album(album_name, release_year)
VALUES('Night Visions Deluxe', 2018);

INSERT INTO album(album_name, release_year)
VALUES('��������', 2004);

INSERT INTO album(album_name, release_year)
VALUES('Mutter', 2001);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('���� 3. ���� ������ ����', '00:03:52', 1);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('���� 9. ���������', '00:03:53', 1);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('������, ��� ������', '00:02:54', 2);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('�������', '00:04:29', 2);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('�������', '00:02:04', 3);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('�������', '00:02:24', 3);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('��������', '00:03:54', 4);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('������', '00:04:33', 4);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('Amsterdam', '00:04:05', 5);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('���', '00:03:36', 2);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('Working Man', '00:03:55', 5);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('������, ������', '00:05:13', 6);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('���', '00:04:55', 6);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('Rein Raus', '00:03:09', 7);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('Feuer Frei!', '00:03:09', 7);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('��������� ����', '00:06:03', 8);

INSERT INTO track(track_name, track_lengths, album_id)
VALUES('�������', '00:04:09', 8);

INSERT INTO collection(collection_name, collection_release_year)
VALUES('������������ ������', 2013);

INSERT INTO collection(collection_name, collection_release_year)
VALUES('���������', 2017);

INSERT INTO collection(collection_name, collection_release_year)
VALUES('�����', 2020);

INSERT INTO collection(collection_name, collection_release_year)
VALUES('����������', 2019);

INSERT INTO collection(collection_name, collection_release_year)
VALUES('The Best', 2018);

INSERT INTO collection(collection_name, collection_release_year)
VALUES('���������� ���', 2015);

INSERT INTO collection(collection_name, collection_release_year)
VALUES('�����', 2012);

INSERT INTO collection(collection_name, collection_release_year)
VALUES('Live', 2019);

INSERT INTO artist_genres(genre_id, artist_id)
VALUES(1, 1);

INSERT INTO artist_genres(genre_id, artist_id)
VALUES(2, 2);

INSERT INTO artist_genres(genre_id, artist_id)
VALUES(2, 3);

INSERT INTO artist_genres(genre_id, artist_id)
VALUES(3, 4);

INSERT INTO artist_genres(genre_id, artist_id)
VALUES(4, 5);

INSERT INTO artist_genres(genre_id, artist_id)
VALUES(5, 6);

INSERT INTO artist_genres(genre_id, artist_id)
VALUES(6, 7);

INSERT INTO artist_genres(genre_id, artist_id)
VALUES(3, 8);

INSERT INTO album_artist(album_id, artist_id)
VALUES(1, 1);

INSERT INTO album_artist(album_id, artist_id)
VALUES(2, 3);

INSERT INTO album_artist(album_id, artist_id)
VALUES(3, 2);

INSERT INTO album_artist(album_id, artist_id)
VALUES(4, 5);

INSERT INTO album_artist(album_id, artist_id)
VALUES(5, 6);

INSERT INTO album_artist(album_id, artist_id)
VALUES(6, 8);

INSERT INTO album_artist(album_id, artist_id)
VALUES(7, 7);

INSERT INTO album_artist(album_id, artist_id)
VALUES(8, 4);

INSERT INTO track_collection(track_id, collection_id)
VALUES(1, 1);

INSERT INTO track_collection(track_id, collection_id)
VALUES(17, 8);

INSERT INTO track_collection(track_id, collection_id)
VALUES(2, 3);

INSERT INTO track_collection(track_id, collection_id)
VALUES(3, 8);

INSERT INTO track_collection(track_id, collection_id)
VALUES(4, 4);

INSERT INTO track_collection(track_id, collection_id)
VALUES(5, 6);

INSERT INTO track_collection(track_id, collection_id)
VALUES(6, 2);

INSERT INTO track_collection(track_id, collection_id)
VALUES(7, 2);

INSERT INTO track_collection(track_id, collection_id)
VALUES(8, 8);

INSERT INTO track_collection(track_id, collection_id)
VALUES(9, 5);

INSERT INTO track_collection(track_id, collection_id)
VALUES(10, 1);

INSERT INTO track_collection(track_id, collection_id)
VALUES(11, 6);

INSERT INTO track_collection(track_id, collection_id)
VALUES(12, 3);

INSERT INTO track_collection(track_id, collection_id)
VALUES(13, 7);

INSERT INTO track_collection(track_id, collection_id)
VALUES(14, 4);

INSERT INTO track_collection(track_id, collection_id)
VALUES(15, 7);

INSERT INTO track_collection(track_id, collection_id)
VALUES(16, 5);