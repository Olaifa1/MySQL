use art;
CREATE TABLE Artist(
ArtistId				Integer 		NOT NULL,
ArtistName				Char(35)		NOT NULL,
Rating					Integer			NOT NULL,
PhoneNumber				Integer			NULL,
CONSTRAINT				Artist_PK	PRIMARY KEY(ArtistId)

);

##	To DROP column phoneNumber in Table Artist;
Use art;
ALTER TABLE artist
DROP phoneNumber;

##	To ADD column phoneNumber in Table Artist;
use art;
alter table artist
ADD phoneNumber numeric(11, 0) NOT NULL;

##	To insert in Artist table;
use art;
INSERT INTO artist VALUES(110270, 'Mary Smith', 7, 08096525895);
use art;
INSERT INTO artist VALUES(110271, 'Olaifa Waliu', 8, 08196525295);
##	To create table Album;
use art;
##	To CREATE table Album
CREATE TABLE Album(
ArtistId			Integer				NULL,
track				Integer				NOT NULL,
Genre				Char(30)			NOT NULL,
YearRelease			integer				NOT NULL,
CONSTRAINT			Album_PK		 PRIMARY KEY (track),
CONSTRAINT			Album_FK		FOREIGN KEY (ArtistId)
									REFERENCES Artist(ArtistId)
);

##	To insert in Table ALBUM;
use art;
INSERT INTO album VALUES(110270, 8, 'Fuji', 2019);



##	To insert in Table ARTIST;
use art;
INSERT INTO artist VALUES(110272, 'Barrack Obama', 3, 08077969124);
INSERT INTO artist VALUES(110273, 'Michelle Obama', 4, 08024541026);

