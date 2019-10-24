## To create database practice1, and tables Human and Games
USE practice1;

CREATE TABLE Human(
HumanId				Integer 	NOT NULL,
Name				Char(35)	NOT NULL,
Color				Char(30)	NOT NULL,
Sex				Char(10)	NULL,
BloodGroup		Char(35)	NULL,
CONSTRAINT			Human_PK	PRIMARY KEY(HumanId)

);

CREATE TABLE Games(
OrderNumber			Integer 		NOT NULL,
StoreNumber			Integer			NULL,
StoreZip			Char(9)			NULL,
OrderMonth			Char(12)		NOT NULL,
OrderYear			Integer			NOT NULL,
OrderTotal			Numeric(4,2)	NULL,
HumanId			Integer			NOT NULL,
CONSTRAINT			Games_PK		PRIMARY KEY (OrderNumber),
CONSTRAINT			Games_FK		FOREIGN KEY (HumanId)
						REFERENCES Human(HumanId)
);
##	To insert in Table Human.
Use practice1;
INSERT INTO human VALUES(2001, 'Mary Smith', 'Orange', 'Female', 'AA');
INSERT INTO human VALUES(2002, 'Olaifa Waliu', 'Blue', 'Male', 'A+');
INSERT INTO human VALUES (2003, 'Nancy Meyers', 'Green', 'Female', 'AB');
INSERT INTO human VALUES(2004, 'Cindy Lo', 'Purple', 'Female', 'O');
INSERT INTO human VALUES(2005, 'Jerry Martin', 'Yellow', 'Male', 'AA');

##	 To  add more columns to the table human;
Use practice1;
ALTER TABLE human
ADD age Integer NOT NULL;

##	 To drop columns from the table human;
Use practice1;
ALTER TABLE "human"
DROP  "age";

Use practice1;
INSERT INTO games VALUES(110110, 10, 'Meyers', 2010, 1000, 80.96, 2001);

##	To alter 