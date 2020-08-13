---Tao bang Movie---
CREATE TABLE Movie(
  Movie_name nvarchar(50) PRIMARY KEY,
  Duration time CHECK(Duration > '01:00:00'),
  Gender int, CHECK(Gender BETWEEN 1 AND 8),
  Director nvarchar(250) ,
  amount_of_money decimal(18,4),
)
INSERT INTO Movie VALUES ('phim 18','02:00:00',0,'HH',19.5)
---Tao bang Actor---
CREATE TABLE Actor(
	Actor_name nvarchar(50) PRIMARY KEY,
	Age int,
	Average_movie_salary decimal(18,2),
	Nationality nvarchar(50),
)
INSERT INTO Actor VALUES ('HH',18,19.999,N'VietNam')
INSERT INTO Actor VALUES ('NH',18,199898.99,N'VietNam')
--- Tao bang ActedIn ---
CREATE TABLE ActedIn(
	Movie_name nvarchar(50) FOREIGN KEY (Movie_name) REFERENCES Movie(Movie_name),
	Actor_name nvarchar(50) FOREIGN KEY (Actor_name) REFERENCES Actor(Actor_name),
	)
	--- them colum ImageLink ---
	ALTER TABLE Movie ADD ImageLink nvarchar(250) NOT NULL UNIQUE
	--- them gia tri---
	INSERT INTO Movie VALUES ('phim 18','02:00:00',0,'HH','19.5','httpasdaa')

	--- update ---
	UPDATE Actor
SET Actor_name = 'hung'
WHERE Age = 12;

--- tuổi lơn hơn 50 ---
SELECT Actor_name,Age,Average_movie_salary,Nationality FROM Actor WHERE Age > 50;
--- lương tăng dần ---
SELECT Actor_name,Average_movie_salary FROM Actor ORDER BY Average_movie_salary;
 --- tìm kiếm tên firm và tên diễn viên đó đóng ---
 
