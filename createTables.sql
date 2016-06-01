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

alter table MuReview add foreign key (email) references MuUser(email);
/*alter table MuReview add foreign key (idAlbum) references MuAlbum(idAlbum);*/

create table MuRating(
idRating int primary key AUTO_INCREMENT,
value int, /*between 1 and 10*/
dateRating date,
email varchar(30),
idAlbum int
);

alter table MuRating add foreign key (email) references MuUser(email);
/*alter table MuRating add foreign key (idAlbum) references MuAlbum(idAlbum);*/
