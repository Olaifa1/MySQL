use movie;
CREATE TABLE actor(
act_id			Integer			not null,
act_fname		Char(20)		null,
act_lname		Char(20)		null,
act_gender		Char(1)			null,

CONSTRAINT		act_id_pk		PRIMARY KEY (act_id)
);


CREATE TABLE director(
dir_id			Integer			not null,
dir_fname		Char(20)		null,
dir_lname		Char(20)		null,

CONSTRAINT		dir_id_pk		PRIMARY KEY (dir_id)
);


create table movie(
mov_id			integer			not null,
mov_title		char(50)		null,
mov_year		integer			null,
mov_time		integer			null,
mov_lang		char(50)		null,
mov_dt_rel		date			null,
mov_rel_country	char(5)			null,

CONSTRAINT			mov_id_pk		PRIMARY KEY (mov_id)
);


create table reviewer(
rev_id 		integer		not null,
rev_name 	char(30)	not null,
 constraint		rev_id_pk		PRIMARY KEY (rev_id)
 );
 
 
 create table genres(
 gen_id integer			not null,
gen_title char(20)		not null,
 constraint		gen_id_pk		PRIMARY KEY (gen_id)
 );
 
 
 create table movie_cast(
act_id		integer			not null,
mov_id		integer			not null,
movie_role		char(30)		null,

CONSTRAINT		movie_cast_pk		PRIMARY KEY (act_id, mov_id),

CONSTRAINT			movie_cast_FK		FOREIGN KEY (act_id)
						REFERENCES actor(act_id),
CONSTRAINT			movie_cast_FK2		FOREIGN KEY (mov_id)
						REFERENCES movie(mov_id)
);
 

  create table movie_direction(
dir_id		integer		not null,
mov_id		integer		not null,

CONSTRAINT		movie_direction_pk		PRIMARY KEY (dir_id, mov_id),

CONSTRAINT			movie_direction_FK		FOREIGN KEY (dir_id)
						REFERENCES director(dir_id),
CONSTRAINT			movie_direction_FK2		FOREIGN KEY (mov_id)
						REFERENCES movie(mov_id)
);
 
  
create table movie_genres(
mov_id		integer		not null,
gen_id 		integer		not null,
 
 CONSTRAINT		movie_genres_pk		PRIMARY KEY (mov_id, gen_id),
 
 CONSTRAINT			movie_genres_FK		FOREIGN KEY (mov_id)
						REFERENCES movie(mov_id),
constraint			movie_genres_FK2		FOREIGN KEY (gen_id)
						REFERENCES genres(gen_id)
    );
    
   
   
   create table rating(
    mov_id			integer		not null,
	rev_id 			integer		not null,
    rev_stars		integer		null,
    num_o_ratings	integer		null,
    
    CONSTRAINT		rating_pk		PRIMARY KEY (mov_id, rev_id),
    
     CONSTRAINT			rating_FK		FOREIGN KEY (mov_id)
						REFERENCES movie(mov_id),
	 CONSTRAINT			rating_FK2		FOREIGN KEY (rev_id)
						REFERENCES reviewer(rev_id)
	);
    