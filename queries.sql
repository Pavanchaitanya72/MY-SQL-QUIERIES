-- create
CREATE TABLE `movies` (
`movie_id` int unsigned NOT NULL AUTO_INCREMENT,
`title` varchar(150) NOT NULL,
`industry` varchar(45) DEFAULT NULL,
`release_year` year DEFAULT NULL,
`imdb_rating` decimal(3,1) DEFAULT NULL,
`studio` varchar(45) DEFAULT NULL,
`language_id` tinyint unsigned DEFAULT NULL,
PRIMARY KEY (`movie_id`)
) ;

-- insert
INSERT INTO `movies`
VALUES (101,'K.G.F: Chapter 2','Bollywood',2022,8.4,'Hombale Films',3),
(102,'Doctor Strange in the Multiverse of Madness','Hollywood',2022,7.0,'Marvel Studios',5),
(103,'Thor: The Dark World ','Hollywood',2013,6.8,'Marvel Studios',5),
(104,'Thor: Ragnarok ','Hollywood',2017,7.9,'Marvel Studios',5),
(105,'Thor: Love and Thunder ','Hollywood',2022,6.8,'Marvel Studios',5),
(106,'Sholay','Bollywood',1975,8.1,'United Producers',1),
(107,'Dilwale Dulhania Le Jayenge','Bollywood',1995,8.0,'Yash Raj Films',1),
(108,'3 Idiots','Bollywood',2009,8.4,'Vinod Chopra Films',1),
(109,'Kabhi Khushi Kabhie Gham','Bollywood',2001,7.4,'Dharma Productions',1),
(110,'Bajirao Mastani ','Bollywood',2015,7.2,'',1),
(111,'The Shawshank Redemption','Hollywood',1994,9.3,'Castle Rock Entertainment',5),
(112,'Inception','Hollywood',2010,8.8,'Warner Bros. Pictures',5),
(113,'Interstellar','Hollywood',2014,8.6,'Warner Bros. Pictures',5),
(115,'The Pursuit of Happyness','Hollywood',2006,8.0,'Columbia Pictures',5),
(116,'Gladiator','Hollywood',2000,8.5,'Universal Pictures ',5),
(117,'Titanic','Hollywood',1997,7.9,'Paramount Pictures',5),
(118,'It\'s a Wonderful Life','Hollywood',1946,8.6,'Liberty Films',5),
(119,'Avatar','Hollywood',2009,7.8,'20th Century Fox',5),
(120,'The Godfather','Hollywood',1972,9.2,'Paramount Pictures',5),
(121,'The Dark Knight','Hollywood',2008,9.0,'Syncopy',5),
(122,'Schindler\'s List','Hollywood',1993,9.0,'Universal Pictures',5),
(123,'Jurassic Park','Hollywood',1993,8.2,'Universal Pictures',5),
(124,'Parasite','Hollywood',2019,8.5,'',5),
(125,'Avengers: Endgame','Hollywood',2019,8.4,'Marvel Studios',5),
(126,'Avengers: Infinity War','Hollywood',2018,8.4,'Marvel Studios',5),
(127,'Pather Panchali','Bollywood',1955,8.3,'Government of West Bengal',7),
(128,'Taare Zameen Par','Bollywood',2007,8.3,'',1),
(129,'Munna Bhai M.B.B.S.','Bollywood',2003,8.1,'Vinod Chopra Productions',1),
(130,'PK','Bollywood',2014,8.1,'Vinod Chopra Films',1),
(131,'Sanju','Bollywood',2018,NULL,'Vinod Chopra Films',1),
(132,'Pushpa: The Rise - Part 1','Bollywood',2021,7.6,'Mythri Movie Makers',2),
(133,'RRR','Bollywood',2022,8.0,'DVV Entertainment',2),
(134,'Baahubali: The Beginning','Bollywood',2015,8.0,'Arka Media Works',2),
(135,'The Kashmir Files','Bollywood',2022,8.3,'Zee Studios',1),
(136,'Bajrangi Bhaijaan','Bollywood',2015,8.1,'Salman Khan Films',1),
(137,'Captain America: The First Avenger','Hollywood',2011,6.9,'Marvel Studios',5),
(138,'Captain America: The Winter Soldier','Hollywood',2014,7.8,'Marvel Studios',5),
(139,'Race 3','Bollywood',2018,1.9,'Salman Khan Films',1),
(140,'Shershaah','Bollywood',2021,8.4,'Dharma Productions',1);

-- fetch 

select * from movies;

--1.Display only movie names--
select title from movies;

--2.Display count of Films--
select count(movie_id) from movies;

--3.Display unique industry--
select DISTINCT industry from movies;

--4.Display unique studios--
select DISTINCT studio from movies;

--5.Display movie names released in 2022--
select title from movies where release_year=2022;

--6.Display movies released before 2000--
select title from movies where release_year<2000;

--7.Display movies released between 2000 and 2021--
select title from movies where release_year>2000 and release_year<2021;

--8.Display movies released after 2000 from Marvel Studios--
select title from movies where release_year>2000 and studio="Marvel Studios";

--9.Display movies released before 2000 from Universal Pictures--
select title from movies where release_year<2000 and studio="Universal Pictures";

--10.Display movies released in 2000,2001,2021--
select title from movies where release_year in (2000,2001,2021);

--11.Display all movies except released in 2000,2001,2021--
select title from movies where release_year not in(2000,2001,2021);

--12.In which year Avatar is released ?--
select release_year from movies where title="Avatar";

--13.What is movie rating of Titanic ?--
select imdb_rating from movies where title="Titanic";

--14.Display all movies released from Marvel Studios ?--
select title from movies where studio="Marvel Studios";

--15.Display all movies released from Marvel Studios which movie rating greater than 8? --
select title from movies where studio="Marvel studios" and imdb_rating>8;

--16.Display movies which movie rating is null ? --
select * from movies where imdb_rating IS NULL;

--17.Display movies which movie rating is not null ?--
select * from movies where imdb_rating IS NOT NULL;

--18.Display movies ascending order by movie rating ?--
select * from movies where imdb_rating IS NOT NULL ORDER BY imdb_rating asc;

--19.Display movies ascending order by movie rating and descending order by release year ?--
select * from movies where imdb_rating IS NOT NULL ORDER BY imdb_rating asc ,release_year desc;

--20.Display top movie rating film details ?--
select *  from movies ORDER BY imdb_rating limit 10;

--21.Display all Hollywood movies ?--
select * from movies where industry="Hollywood";
