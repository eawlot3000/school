-- create a new db
#CREATE DATABASE algonquify;
# use created db
use algonquify;

/*
drop table artist;
drop table genre;
drop table play_history;
drop table song;
drop table user;
*/


-- create table artist
CREATE TABLE artist (
  id INT NOT NULL AUTO_INCREMENT, -- 1, so important
  name VARCHAR(50) NOT NULL,
  genre_id INT NOT NULL,
  PRIMARY KEY (id) -- 2, so important. make sure all tables has that
);

-- create Table genre
create table genre (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(25) NOT NULL,
  PRIMARY KEY (id)
);

-- create Table play_history
CREATE TABLE play_history (
  id INT NOT NULL AUTO_INCREMENT,
  start_time DATETIME NOT NULL,
  genre_id INT NOT NULL,
  song_id INT NOT NULL,
  artist_id INT NOT NULL,
  user_id INT NOT NULL,
  PRIMARY KEY (id)
);

-- create Table song
CREATE TABLE song (
  id INT NOT NULL AUTO_INCREMENT,
  artist_id INT NOT NULL,
  title VARCHAR(50) NOT NULL,
  duration INT NOT NULL,
  release_year INT NOT NULL,
  genre_id INT NOT NULL,
  PRIMARY KEY (id)
);

-- create Table user
CREATE TABLE user (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  birth_date DATE,
  from_date DATE NOT NULL,
  phone_number VARCHAR(50) NOT NULL,
  email VARCHAR(255) NOT NULL,
  country VARCHAR(50) NOT NULL,
  plan ENUM('Basic', 'Student', 'Family', 'Premium') DEFAULT 'Basic' NOT NULL,
  PRIMARY KEY (id)
);