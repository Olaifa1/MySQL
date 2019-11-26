use movie;
insert into actor values(2000, 'McCallister', 'Pat', 'F');
insert into actor values(2001, 'Sam', 'Becker', 'M');
insert into actor values(2002, 'Pat', 'Pence', 'F');
insert into actor values(2003, 'Tom', 'Cruise', 'M');

insert into director values(1788, 'Cohbams', 'Asuquo');
insert into director values(1888, 'Shina', 'Peters');
insert into director values(1988, 'Steven', 'Steinberg');
insert into director values(2088, 'James', 'Cameron');

insert into movie values(1230, 'American Beauty', 1998, 123, 'English', '1998-01-01',  'USA');
insert into movie values(1231, 'Eyes Wide Shut', 1999, 145, 'English', '1999-12-02',  'USA');
insert into movie values(1232, 'Titanic', 1997, 176, 'English', '1997-12-02',  'USA');
insert into movie values(1233, 'The Heat', 2006, 129, 'English', '2006-12-02',  'USA');

insert into reviewer values(34343,	'Allen');
insert into reviewer values(55343,	'Boston');
insert into reviewer values(34341,	'Connecticut');
insert into reviewer values(34321,	'Sacramento');

insert into genres values(76843,	'Sience fiction');
insert into genres values(86843,	'Tragedy');
insert into genres values(96843,	'Comedy');
insert into genres values(66843,	'History');

insert into movie_direction values(1788,	1230);
insert into movie_direction values(1888,	1231);
insert into movie_direction values(1988,	1232);
insert into movie_direction values(2088,	1233);

insert into movie_cast values(2000,	1230, 'villain');
insert into movie_cast values(2001,	1231, 'Hero');
insert into movie_cast values(2002,	1232, 'Supporting Role');
insert into movie_cast values(2003,	1233, 'Sniper');

insert into movie_genres values(1230, 76843);
insert into movie_genres values(1231, 86843);
insert into movie_genres values(1232, 96843);
insert into movie_genres values(1233, 66843);

insert into rating values(1230, 34343, 7, 7);
insert into rating values(1231, 55343, 8, 10);
insert into rating values(1232, 34341, 6, 3);
insert into rating values(1233, 34321, 5, 5);