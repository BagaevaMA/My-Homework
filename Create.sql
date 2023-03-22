create table if not exists genre (
      genre_id SERIAL primary key,
      genre_name VARCHAR(60) not null unique
);

create table if not exists artist (
      artist_id SERIAL primary key,
      artist_name VARCHAR(60) not null 
);

create table if not exists album (
      album_id SERIAL primary key,
      album_name VARCHAR(60) not null,
      release_year INTEGER not null check(release_year>1900)
);

create table if not exists track (
      track_id SERIAL primary key,
      track_name VARCHAR(60) not null,
      track_lengths time not null,
      album_id INTEGER REFERENCES album(album_id)    
);

create table if not exists collection (
      collection_id SERIAL primary key,
      collection_name VARCHAR(60) not null,
      collection_release_year INTEGER not null check(collection_release_year>1900)
);

create table if not exists artist_genres (
      genre_id INTEGER REFERENCES genre(genre_id),
      artist_id INTEGER references artist(artist_id),
      constraint pk primary key (genre_id,artist_id)
);

create table if not exists album_artist (
      album_id INTEGER REFERENCES album(album_id),
      artist_id INTEGER references artist(artist_id),
      constraint pk1 primary key (album_id, artist_id)
);

create table if not exists track_collection (
      track_id INTEGER REFERENCES track(track_id),
      collection_id INTEGER references collection(collection_id),
      constraint pk2 primary key (track_id, collection_id)
);