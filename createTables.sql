create table RAdmin(
login varchar(20) primary key,
password varchar(30), /* trigger here*/
email varchar(30)
);

create table RUser(
email varchar(30) primary key,
username varchar(20),
password varchar(30), /* trigger here*/
validity boolean
);

create table Review(
idReview int primary key AUTO_INCREMENT,
message varchar(200),
dateReview date,
visibility boolean,
email varchar(30) foreign key references RUser(email),
idAlbum int foreign key references Album(idAlbum)
);

create table Rating(
idRating int primary key AUTO_INCREMENT,
value int, /*between 1 and 10*/
dateRating date,
email varchar(30) foreign key references RUser(email),
idAlbum int foreign key references Album(idAlbum)
);
