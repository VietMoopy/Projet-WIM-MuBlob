create table MuAdmin(
login varchar(20) primary key,
password varchar(30), /* trigger here*/
email varchar(30)
);

create table MuUser(
email varchar(30) primary key,
username varchar(20),
password varchar(30), /* trigger here*/
validity boolean
);

create table MuReview(
idReview int primary key AUTO_INCREMENT,
message varchar(200),
dateReview date,
visibility boolean,
email varchar(30),
idAlbum int
);

create table MuRating(
idRating int primary key AUTO_INCREMENT,
value int, /*between 1 and 10*/
dateRating date,
email varchar(30),
idAlbum int
);

create table MuAlbum(
idAlbum int primary key AUTO_INCREMENT,
nameA varchar(20),
releaseDate date,
genre varchar(30), /*between ... */
globalRating float,
idArtist int
);

create table MuArtist(
idArtist int primary key AUTO_INCREMENT,
nameA varchar(20),
birthDate date,
description varchar(20)
);

alter table MuTrack(
idTrack int primary key AUTO_INCREMENT,
trackNumber int,
nameT varchar(20),
idAlbum int
);

alter table MuRating add foreign key (email) references MuUser(email);
alter table MuRating add foreign key (idAlbum) references MuAlbum(idAlbum);
alter table MuReview add foreign key (email) references MuUser(email);
alter table MuReview add foreign key (idAlbum) references MuAlbum(idAlbum);
alter table MuAlbum add foreign key (idArtist) references MuArtist(idArtist);
alter table MuTrack add foreign key (idAlbum) references MuAlbum(idAlbum);
