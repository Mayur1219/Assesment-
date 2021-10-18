create database hospital
use hospital
-- Table Create
CREATE TABLE patient (
  Customer_Name varchar(255) NOT NULL,
  Customer_Id int NOT NULL,  
  Open_Date date NOT NULL,
  Last_Consulted_Date date  NULL,
  Vaccination_type char(5)  NULL,
  Dr_Name varchar(45) DEFAULT NULL,
  State char(5) DEFAULT NULL,
  Country char(5)  NULL,
  DOB date DEFAULT NULL,
  Active char(3) NULL,
  PRIMARY KEY (Customer_Id)
  )

  --1st time insert
  insert into patient (Customer_Name,Customer_Id,Open_Date,Last_Consulted_Date,Vaccination_type,Dr_Name,State,Country,DOB,Active)
  values('Alex',1,'2015-01-15','2015-01-21','MVX','Paul','SA','USA','1998-02-04','Yes'),
('John',2,'2015-09-06','2015-09-11','MCV','Paul','CA','USA','1999-06-06','Yes'),
('Sumith',3,'2016-11-23','2016-11-29','MVX','Reddy','KA','IND','1998-08-16','Yes'),
('Joma',4,'2017-08-09','2017-08-15','MVX','Chuck','VIC','AU','1997-01-01','No'),
('Mathew',5,'2014-12-17','2014-12-25','MCV','Bill','WAS','PHIL','1998-02-23','Yes'),
('Matt',6,'2018-05-29','2018-06-04','MXV','Paul','NY','USA','2000-08-12','Yes'),
('Atherv',7,'2019-06-06','2019-06-15','MXV','Reddy','MH','IND','2000-02-04','Yes'),
('Robin',8,'2017-08-09','2017-08-17','MCV','Chuck','VIC','AU','1996-12-10','No'),
('Gaurav',9,'2020-06-07','2020-06-14','MVX','Reddy','MH','IND','1999-10-13','Yes'),
('Jacob',10,'2018-07-25','2018-07-30','MXV','Andrew','LI','UK','1999-07-07','No'),
('Marshal',11,'2019-07-24','2020-03-05','MCX','Andrew','LI','UK','1998-08-14','Yes'),
('Sergio',12,'2016-09-12','2016-09-18','MCV','Paul','TX','USA','1997-05-23','No'),
('Vikrant',13,'2019-10-13','2019-10-20','MCX','Reddy','RA','IND','1999-10-23','Yes'),
('Jonathan',14,'2014-11-30','2014-12-06','MXX','Paul','LA','USA','1999-10-09','Yes'),
('Mike',15,'2019-05-05','2019-05-11','MCX','Chuck','VIC','AU','1999-06-12','Yes'),
('Olivia',16,'2018-08-09','2018-08-16','MVV','Chuck','VIC','AU','1999-09-12','No'),
('Emma',17,'2020-07-02','2020-07-10','MVV','Andrew','MAN','UK','2000-01-29','Yes'),
('Smith',18,'2021-03-10','2021-03-19','MVV','Paul','LA','USA','1997-03-18','Yes'),
('Sakshi',19,'2020-12-29','2021-01-05','MCV','Reddy','DL','IND','1999-08-27','No'),
('Sophia',20,'2019-06-25','2019-06-20','MCX','Chuck','VIC','AU','1999-02-18','Yes')


--2nd time insert 
insert into patients
values('Ram',21,'2019-06-25','2019-06-20','MCX','Chuck','VIC','AU','1999-02-18','Yes')

-- To check data after python script run
-- Intermediate table
select * from patient

--Country wise Table
select * from dbo.Table_IND
select * from [dbo].[Table_AU]
select * from [dbo].[Table_PHIL]
select * from [dbo].[Table_UK]
select * from [dbo].[Table_USA]