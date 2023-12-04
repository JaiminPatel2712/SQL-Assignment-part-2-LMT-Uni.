-- LMT_University Student data management project in sql
--Student name : Jaimin Rajubhai Patel  (200548662)
--             : Bhavy Jiteshkumar Shah (200553172)
--                         1.      Create a database called “LMT_University”.
--                         2.	Create an “enrol” schema under “LMT_University”.
USE LMT_University;
GO

CREATE SCHEMA enrol;
GO
--                         3.	Use “enrol” Schema for creating the project.
USE LMT_University;
GO
--                         4.	Create the Database modeling in such a way that Model looks like
--                         5.	Create an “Address” table under “enrol” schema with the following specifications-
--                            a.	Address table must have the following attributes
--                            b.    Add the following constraint.
--                            c.	Insert the following records based on the following specifications.
--                        a,b & c the following code is for all these three question 

USE LMT_University;
GO

CREATE TABLE enrol.Address (
    AddressID INT IDENTITY(1,1) CONSTRAINT PK_AddressID PRIMARY KEY NOT NULL,
    StreetAddress VARCHAR(150) NULL,
    City VARCHAR(50) NOT NULL,
    State VARCHAR(50) NULL,
    PostalCode VARCHAR(50) NULL,
    Country VARCHAR(50) NOT NULL,
    InsertedOn DATE NOT NULL DEFAULT GETDATE()
);

USE LMT_University;
GO

--                        d.	After Insertion, Table looks like as shown below ( insert the data is given in our assignment).

INSERT INTO enrol.Address (StreetAddress, City, State, PostalCode, Country)
VALUES 
('5 Schurz Lane', 'Grybów', NULL, '33-330', 'Poland'),
('628 Waubesa Drive', 'Jinsheng', NULL, NULL, 'China'),
('44135 Northfield Way', 'Nowy Dwór Mazowiecki', NULL, '05-160', 'Poland'),
('335 Bellgrove Road', 'Gaoqiao', NULL, NULL, 'China'),
('28 Victoria Junction', 'Bukovec', NULL, '739 84', 'Czech Republic'),
('6 Stuart Road', 'Wushan', NULL, NULL, 'China'),
('730 Barby Street', 'Zhengchang', NULL, NULL, 'China'),
('22742 Schiller Street', 'Sumurwaru', NULL, NULL, 'Indonesia'),
('31 Elka Junction', 'Cigembong', NULL, NULL, 'Indonesia'),
('5 Kenwood Circle', 'Davao', NULL, '8000', 'Philippines'),
('99 Bunker Hill Crossing', 'Zarasai', NULL, '32001', 'Lithuania'),
('5 Farragut Center', 'Jaromerice', NULL, '569 44', 'Czech Republic'),
('25 Lerdahl Street', 'Nanshi', NULL, NULL, 'China'),
('918 Bonner Way', 'Phayakkhaphum Phisai', NULL, '44110', 'Thailand'),
('9 West Alley', 'Sempu', NULL, NULL, 'Indonesia'),
('234 Hagan Lane', 'Rennes', 'Bretagne', '35033', 'France'),
('33942 Eagle Crest Trail', 'Oliveiras', 'Porto', '4745-235', 'Portugal'),
('20791 Hermina Way', 'B?o L?c', NULL, NULL, 'Vietnam'),
('86 Lake View Way', 'Marsa Alam', NULL, NULL, 'Egypt'),
('19732 Burning Wood Parkway', 'Piteå', 'Norrbotten', '944 73', 'Sweden'),
('9320 Oak Valley Road', 'Rathangani', NULL, 'A45', 'Ireland'),
('2638 Waubesa Circle', 'Honda', NULL, '732048', 'Colombia'),
('6999 Monument Center', 'Cortes', NULL, '6341', 'Philippines'),
('1 Warbler Hill', 'Proletar', NULL, NULL, 'Tajikistan'),
('1311 Crowley Street', 'Baghlan', NULL, NULL, 'Afghanistan'),
('19 Walton Way', 'Öldziyt', NULL, NULL, 'Mongolia'),
('1 Glacier Hill', 'Cergy-Pontoise', 'Île-de-France', '95304', 'France'),
('5094 Gateway Way', 'Živinice', NULL, NULL, 'Bosnia and Herzegovina'),
('2 Roth Pass', 'Tuatuka', NULL, NULL, 'Indonesia'),
('89531 Northview Road', 'Ganyi', NULL, NULL, 'China');


USE LMT_University;
GO




--                         6.	Create a “Department” table under “enrol” schema with the following specifications-
--                            a.	Department table Must have the following attributes-
--                            b.	Add the following constraints
--                            c.	Insert the following records based on the following specifications.
--                            a,b & c the following code is for all these three question 

CREATE TABLE enrol.Department (
    DepartmentID INT IDENTITY(1,1) CONSTRAINT PK_DepartmentID PRIMARY KEY NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL,
    DepartmentDescription VARCHAR(150) NULL,
    DepartmentCapacity INT NOT NULL,
    InsertedOn DATE NOT NULL DEFAULT GETDATE()
);

--                      d.	After Insertion, Table looks like as shown below ( insert the data is given in our assignment).
insert into [enrol].[Department] (DepartmentName, DepartmentDescription,DepartmentCapacity)
values ('IT',	'Information Technology',	60),
('EE',	'Electrical Engineering',	120),
('CSE'	,'Computer Science Engineering',	140),
('ME',	'Mechanical Engineering',	110),
('ECE'	,'Electronic and Communication Engineering',	80),
('AEIE',	'Applied Electronics and Instrumentation Engineering',	50);

USE LMT_University;
GO


--                                    7.	Create a “Lecturer” table under “enrol” schema with the following specifications-
--                                        a.	Lecturer table Must have the following attributes-
--                                        b.	Add the following constraints-
--                                        c.	Insert the following records based on the following specifications.
--                                        a,b & c the following code is for all these three question 

CREATE TABLE enrol.Lecturer (
    LecturerID INT IDENTITY(1,1) CONSTRAINT PK_LecturerID PRIMARY KEY NOT NULL,
    LecturerName VARCHAR(100) NOT NULL,
    LecturerHighestQualification VARCHAR(100) NULL,
    LecturerAge DATE NOT NULL,
    DepartmentID INT NOT NULL,
    InsertedOn DATE NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_DepartmentID FOREIGN KEY (DepartmentID) REFERENCES enrol.Department(DepartmentID)
);

--                                   d.	After Insertion, Table looks like as shown below ( insert the data is given in our assignment).

insert into [enrol].[Lecturer](LecturerName, LecturerHighestQualification, LecturerAge, DepartmentId)
values ('Peder Bernaldez', 'M.Tech','2010-10-10',	6),
('Emile Adolthine','PhD', '2010-04-04',	5),
('Titos Iorizzi',	'M.Tech',	'2012-04-09'	,4),
('Ferris Falck',	'MSC',	'2011-05-05'	,3),
('Georgie McIlwraith',	'M.Tech'	,'2017-05-08'	,2),
('Karlen Kearn'	,'MSC'	,'2019-03-03'	,1),
('Axe Whistlecroft'	,'MCA'	,'2019-03-03'	,6),
('Drucie Bazek',	'PhD',	'2019-04-01'	,5),
('Antony Gamlin',	'M.Tech'	,'2019-04-01'	,4),
('Alexina Moncaster',	'MBA'	,'2019-04-01'	,3),
('Milzie Kabos'	,'MCA'	,'2019-03-03'	,2),
('Arlene Glendza',	'MS',	'2019-03-03'	,1),
('Kirby Kabisch'	,'M.Tech'	,'2019-04-01'	,1),
('Selma Eliyahu',	'PhD',	'2019-04-01'	,2),
('Ilysa Chooter',	'M.Tech'	,'2019-04-01'	,3),
('Rozalie Pennycord',	'MSC'	,'2010-10-10'	,4),
('Dacey Glidder'	,'M.Tech'	,'2010-04-04'	,5),
('Claretta Diaper'	,'MSC'	,'2012-04-09'	,6),
('Kalil Pendleton'	,'MCA'	,'2011-05-05'	,6),
('Trudey Brech'	,'PhD'	,'2011-10-05'	,5),
('Gypsy Ambrosini'	,'M.Tech'	,'2011-03-30'	,4),
('Lauree Ribbon'	,'MBA'	,'2013-04-04'	,3),
('Hugo Valois'	,'MCA'	,'2012-04-29'	,2),
('Perren Chetter'	,'MS'	,'2018-05-03'	,1),
('Fawn Coffelt',	'M.Tech',	'2020-02-26'	,1),
('Terrie Golby'	,'PhD'	,'2020-02-26'	,2),
('Jeanette Ciraldo'	,'M.Tech'	,'2020-03-26'	,3),
('Elfrieda Elijahu',	'MSC'	,'2020-03-26'	,4),
('Guthry Blaes'	,'M.Tech'	,'2020-03-26'	,5),
('Richy Saice'	,'MSC'	,'2020-02-26'	,6);



USE LMT_University;
GO
--                                  8.	Create a “Student” table under “enrol” schema with the following specifications-
--                                     a.	Student table Must have the following attributes-
--                                     b.	Add the following constraints
--                                     c.	Insert the following records based on the following specifications.

USE LMT_University;
GO

CREATE TABLE enrol.Student (
    StudentID INT IDENTITY(1,1) CONSTRAINT PK_StudentID PRIMARY KEY NOT NULL,
    StudentFirstName VARCHAR(100) NOT NULL,
    StudentLastName VARCHAR(100) NULL,
    StudentDOB DATE NOT NULL,
    StudentMobile VARCHAR(100) NULL,
    StudentRollNo INT NOT NULL,
    DepartmentID INT NOT NULL,
    AddressID INT NOT NULL,
    InsertedOn DATE NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_DepartmentID_Student FOREIGN KEY (DepartmentID) REFERENCES enrol.Department(DepartmentID),
    CONSTRAINT FK_AddressID_Student FOREIGN KEY (AddressID) REFERENCES enrol.Address(AddressID)
);

--                                  d.	After Insertion, Table looks like as shown below (insert the data is given in our assignment).


insert into [enrol].[Student](StudentFirstName, StudentLastName, StudentDOB, StudentMobile, StudentRollNo, DepartmentID, AddressID)
values ('Joey'	,'Ironside'	,'1995-11-22',	'1276234258',	1,	3,	1),
('Karlotta'	,'Garraway'	,'1997-07-06',	'2192431615',	2,	3,	24),
('Jerry',	'Stutte'	,'1996-12-18',	'4125425783',	3,	1,	17),
('Yehudit'	,'Rahill'	,'1995-01-15',	'9939485406',	4,	2,	29),
('Cele'	,'Crosetto'	,'1998-11-24',	'3622733725',	5,	3,	16),
('Hazlett'	,'Mowsdale'	,'1995-04-09',	'1482883476',	6,	4,	23),
('Carlyn'	,'Marks'	,'1996-12-27',	'6129154080',	7,	5,	20),
('Ellis'	,'Boatman'	,'1997-04-29',	'8269707118',	8,	6,	7),
('Florina'	,'Boyack'	,'1997-08-03',	'9623352863',	9,	3,	14),
('Borg'	,'Innett'	,'1997-09-03',	'5256034960',	10,	1,	19),
('Sayres'	,'Jennings'	,'1996-05-12',	'8675076454',	11,	4,	27),
('Jarid'	,'Sprull'	,'1998-11-02',	'1391270091',	12,	2,	6),
('Elvera'	,'Bannard'	,'1996-09-07',	'7897232539',	13,	4,	24),
('Ody'	,'Inggall'	,'1995-03-05',	'6094734260',	14,	5,	25),
('Curcio'	,'McWhan'	,'1996-07-29',	'2394865847',	15,	6,	11),
('Connie',	'Sinnie'	,'1995-07-19',	'1473936221',	16,	6,	23),
('Auroora'	,'Nel'	,'1996-09-05',	'2216400391',	17,	3,	14),
('Wendall'	,'Rosendale'	,'1999-12-30',	'1818120249',	18,	3,	28),
('Hadley'	,'Bradbury'	,'1996-08-16',	'6518067697',	19,	1,	10),
('Celine'	,'Smales'	,'1999-07-11',	'7106508130',	20,	2,	10),
('Jesselyn'	,'Stevenson'	,'1998-05-16',	'9231672206',	21,	2,	22),
('Corinna'	,'Pinkney'	,'1998-01-16',	'8323630067',	22,	5,	29),
('Orelle'	,'Adamthwaite'	,'1997-07-26',	'2539126766',	23,	3,	17),
('Howie'	,'Seaman'	,'1997-12-01',	'9888259627',	24,	2,	4),
('Sibyl'	,'Corey'	,'1996-07-18',	'4493239590',	25,	5,	11),
('Ruperta'	,'Peaker'	,'1999-05-22',	'5124781263',	26,	5,	4),
('Delmer'	,'Roughey'	,'1995-04-21',	'4175314364',	27,	3,	22),
('Gifford'	,'O"Scannill'	,'1996-10-31',	'3134783726',	28,	4,	22),
('Hedy'	,'O"Hone'	,'1998-03-29',	'7316228047',	29,	2,	17),
('Shalna'	,'Hyde-Chambers'	,'1999-11-23',	'7455116160',	30,	5,	6),
('Ferdie'	,'Di Napoli'	,'1995-01-17',	'1905908693',	31,	4,	30),
('Piper'	,'Giacomuzzo'	,'1998-09-14',	'5499340503',	32,	6,	4),
('Gerhardt'	,'Schruurs'	,'1999-11-18',	'8197494894',	33,	3,	1),
('Mellicent',	'Buncher'	,'1996-10-03',	'4584525312',	34,	5,	28),
('Corette'	,'Demead'	,'1997-09-17'	, '4909862137',	35,	5,	17),
('Jorgan'	,'Barson'	,'1997-05-01',	'6022309183',	36,	1,	21),
('Koral'	,'Bowen'	,'1998-05-12',	'4198817454',	37,	4,	3),
('Allissa'	,'Kitter'	,'1998-08-17',	'7328676920',	38,	5,	7),
('Townsend'	,'Doughtery'	,'1998-04-13',	'2639777958',	39,	4,	7),
('Yolane'	,'Geratt'	,'1998-06-10',	'2069585951',	40,	6,	17),
('Chrystel'	,'Allwood'	,'1996-09-07',	'6958461692',	41,	3,	25),
('Dyana'	,'Clutterbuck'	,'1997-09-22',	'5842483886',	42,	1,	1),
('Nikki'	,'Edy'	,'1999-01-10',	'5096155315',	43,	6,	25),
('Hendrik'	,'Surr'	,'1997-04-05',	'2021255732',	44,	5,	11),
('Marta'	,'Bosch'	,'1998-09-28',	'4075136713',	45,	6,	5),
('Garrik'	,'Pell'	,'1999-04-14',	'3071057649',	46,	6,	7),
('Stormi'	,'Colbron'	,'1998-10-21',	'9968113654',	47,	3,	28),
('Angelique'	,'Iacivelli'	,'1995-06-07',	'9518365081',	48,	5,	7),
('Zack'	,'Hefforde'	,'1999-07-25',	'5455693035',	49,	1,	29),
('Gusella'	,'Pettiford'	,'1999-08-23',	'2425172721',	50,	4,	3);


--                                     9.	Write the following Query based on the above datasets.

--a.   List all the Student information from the Student table.
select * from [enrol].[Student]

--b.   List all the Department information from the Department table.
select * from [enrol].[Department]

--c.   List all the Lecturer information from the Lecturer table
select * from [enrol].[Lecturer]

--d.   List all the Address information from the Address table.
SELECT * FROM enrol.Address;

--e.   List the StudentFullName, StudentDOB, StudentMobile from Student [StudentFullName=StudentFirstName + ‘  ‘ + StudentLastName]
select StudentFirstName +' '+ StudentLastName as StudentFullName,StudentDOB,StudentMobile  
from enrol.Student;

--f.	List the StudentID, StudentFirstName, StudentLastName, StudentDOB, StudentMobile from Student in AddressID 7.
SELECT StudentID, StudentFirstName, StudentLastName, StudentDOB, StudentMobile,StudentRollNo from enrol.Student where AddressID=7;

--g.	List all the student information whose first name is start with 'B'
SELECT * from enrol.Student where StudentFirstName like 'B%';

--h.	List all the student information whose first name is start and end with 'A'
SELECT* from enrol.Student where StudentFirstName like 'A%' and StudentFirstName like '%A';

--i.	Count the number of Student from Student table whose DepartmentID 6.
SELECT COUNT(*) as Count from enrol.Student where DepartmentID=6;

--j.	List all the StudentFullName, StudentAge, StudentMobile from Student [StudentFullName= StudentFirstName + ‘  ‘ + StudentLastName]
--                                                                                            [StudentAge= Current date – DOB (in Years)]
SELECT StudentFirstName+' '+StudentLastName as StudentFullName,
Datediff(year,StudentDOB,getdate()) as StudentAge, StudentMobile from enrol.Student;

--k.	List all the StudentFullName, StudentAge, StudentMobile whose Age>23 from Student [StudentFullName= StudentFirstName + ‘  ‘ + StudentLastName]
--                                                                                                         [StudentAge= Current date – DOB (in Years)]
SELECT StudentFirstName+' '+StudentLastName as StudentFullName,
Datediff(year,StudentDOB,getdate()) as StudentAge, StudentMobile from enrol.Student 
where Datediff(year,StudentDOB,getdate()) >23;

--l.	List all the StudentFullName, StudentAge, StudentMobile whose Age is either 21 or 23 from Student [StudentFullName= StudentFirstName + ‘  ‘ + StudentLastName]
--                                                                                                                         [StudentAge= Current date – DOB (in Years)]
SELECT StudentFirstName+' '+StudentLastName as StudentFullName,
Datediff(year,StudentDOB,getdate()) as StudentAge, StudentMobile from enrol.Student 
where Datediff(year,StudentDOB,getdate())=21 or Datediff(year,StudentDOB,getdate())=23;

--m.	List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerAge from Lecturer.
SELECT LecturerID, LecturerName, LecturerHighestQualification, LecturerAge 
from enrol.Lecturer;

--n.	List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerAge from Lecturer whose HighestQualification is either “MS” or “PhD”.
SELECT LecturerID, LecturerName, LecturerHighestQualification, LecturerAge 
from enrol.Lecturer where LecturerHighestQualification='MS' 
or LecturerHighestQualification='PhD';

--o.	List all the lecturer information who belongs to DepartmentID 2.
SELECT * FROM enrol.Lecturer where DepartmentID=2;

--p.	List all the lecturer information whose name end with “R”.
SELECT * FROM enrol.Lecturer where LecturerName like '%R';

--q.	List all the lecturer information whose name either start or end with “E”.
SELECT * FROM enrol.Lecturer where LecturerName like '%E' 
or LecturerName like 'E%';

--r.	List all the lecturer name is in capital letter.
SELECT UPPER(LecturerName) as LecturerName  from enrol.Lecturer;

--s.	Display 5 character from the lecturer name along with LecturerID and LecturerHighestQualification.
SELECT SUBSTRING(LecturerName,1,5) as LecturerName,LecturerID, LecturerHighestQualification 
from enrol.Lecturer;

--t.	List LecturerID, LecturerName, LecturerHighestQualification, LecturerAge(in year) [LecturerAge= Current Date – LecturerAge)] (in year).
SELECT LecturerID,LecturerName,LecturerHighestQualification,
DATEDIFF(year,LecturerAge,GETDATE())  as LecturerAge from enrol.Lecturer;

--u.	List DepartmentID, DepartmentName, DepartmentDescription, DepartmentCapacity from Department.
SELECT DepartmentID, DepartmentName, DepartmentDescription, DepartmentCapacity
from enrol.Department;

--v.	List all the Department information who’s DepartmentName is “ECE”.
SELECT * from enrol.Department where DepartmentName='ECE';

--w.	List all DepartmentName, DepartmentDescription, DepartmentCapacity from Department whose capacity is greater than 60.
SELECT DepartmentName, DepartmentDescription, DepartmentCapacity 
from enrol.Department where DepartmentCapacity>60;
 
--x.	List all AddressID, StreetAddress, City, State, PostalCode, Country from Address.
SELECT AddressID, StreetAddress, City, State, PostalCode, Country
from enrol.Address;

--y.	List all AddressID, StreetAddress, City, State, PostalCode, Country from Address who belongs to “Poland” country.
SELECT AddressID, StreetAddress, City, State, PostalCode, Country 
from enrol.Address where Country='Poland';

--z.	List all the Address information whose state is null.
SELECT * from enrol.Address where State is null;

--aa.	List all the Address information whose PostalCode is not null.
SELECT * from enrol.Address where PostalCode is not null;

--bb.	List all the Address information whose City name is "Honda" and Country name is "Colombia"
SELECT * from enrol.Address where City='Honda' and 
Country='Colombia';

--                                        10.	Write the following Query based on the above datasets.

--a.	List unique DOB from Student.
SELECT DISTINCT(StudentDOB) from enrol.Student

--b.	List unique DepartmentName from Department.
SELECT DISTINCT(DepartmentName) from enrol.Department

--c.	List unique Country name from Address.
SELECT DISTINCT(Country) from enrol.Address

--d.	List unique State name from Address.
SELECT DISTINCT(State) from enrol.Address

--e.	List unique City name from Address.
SELECT DISTINCT(City) from enrol.Address

--f.	List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerYearService from Lecturer [LecturerYearService= Current Date – LecturerAge] (in year).
SELECT LecturerID, LecturerName, LecturerHighestQualification, 
DATEDIFF(yy,LecturerAge,getdate()) as LecturerYearService 
from enrol.Lecturer

--g.	List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerType from Lecturer [LecturerType= if LecturerYearService< 5 then "Begining Level Experience" else if LecturerYearService>= 5 and LecturerYearService<10 then "Mid Level experience" else "Experienced".
SELECT LecturerID, LecturerName, LecturerHighestQualification, 
DATEDIFF(yy,LecturerAge,getdate()) as LecturerYearService, 
CASE	
when DATEDIFF(yy,LecturerAge,getdate())<'5' then'Beginning Level Experience'
When DATEDIFF(yy,LecturerAge,getdate())>='5' and DATEDIFF(yy,LecturerAge,getdate())<'10'then 'Mid Level Experience'
		Else 'Experienced'
END AS LecturerType
from enrol.Lecturer;

--                                         11.	Write the following Query based on the above datasets.

--a.	Display all Student and their Department Information based on the relationship.
SELECT   st.StudentFirstName,st.StudentLastName,st.StudentMobile,st.StudentRollNo,st.StudentDOB
 ,dt.DepartmentID,dt.DepartmentName,dt.DepartmentDescription,dt.DepartmentCapacity
 FROM enrol.Student AS st
 INNER JOIN enrol.Department AS dt
 ON st.DepartmentID=dt.DepartmentID;


 --b.	Display all Student and their Address Information based on the relationship.
 SELECT st.StudentFirstName,st.StudentLastName,st.StudentMobile,st.StudentRollNo,st.StudentDOB,
ad.AddressID,ad.StreetAddress,ad.PostalCode,ad.City,ad.State,ad.Country
FROM enrol.Student AS st
INNER JOIN enrol.Address AS ad
ON st.AddressID=ad.AddressID;


--c.	Display all Department and their Lecturer Information based on the relationship.
SELECT lr.LecturerID,lr.LecturerName,lr.LecturerHighestQualification,lr.LecturerAge,
  dt.DepartmentID,dt.Departmentname,dt.DepartmentDescription,dt.DepartmentCapacity
 FROM enrol.Lecturer AS lr
 INNER JOIN enrol.Department AS dt
 ON lr.DepartmentID=dt.DepartmentID;


 --d.	Display all Student with their Department with Lecturer Information based on the relationship.
 SELECT
st.StudentFirstName ,st.StudentLastName ,st.StudentMobile ,st.StudentRollNo ,st.StudentDOB ,st.DepartmentID
,lr.LecturerID ,lr.LecturerName ,lr.LecturerHighestQualification ,lr.LecturerAge
,dt.DepartmentID ,dt.Departmentname ,dt.DepartmentDescription ,dt.DepartmentCapacity
FROM enrol.Student AS st
INNER JOIN enrol.Department AS dt 
ON st.DepartmentID=dt.DepartmentID
INNER JOIN enrol.Lecturer AS lr
ON st.DepartmentID=lr.DepartmentID;


--e.	Display all Student with their Address and Department Information based on the relationship.
SELECT st.StudentFirstName,st.StudentLastName,st.StudentMobile,st.StudentRollNo,st.StudentDOB,st.DepartmentID
 ,dt.DepartmentID,dt.Departmentname,dt.DepartmentDescription,dt.DepartmentCapacity
 ,ad.AddressID,ad.StreetAddress,ad.PostalCode,ad.City,ad.State,ad.Country
 FROM enrol.Student AS st
 INNER JOIN enrol.Department AS dt
 ON st.DepartmentID=dt.DepartmentID
 INNER JOIN enrol.Address AS ad
 ON st.AddressID=ad.AddressID;


-- f.	Display all Student with Address, Department and Lecturer Information based on the relationship.
 SELECT
st.StudentFirstName,st.StudentLastName ,st.StudentMobile ,st.StudentRollNo ,st.StudentDOB ,st.DepartmentID
   ,ad.AddressID ,ad.StreetAddress ,ad.PostalCode ,ad.City ,ad.State ,ad.Country ,
dt.DepartmentID ,dt.Departmentname,dt.DepartmentDescription ,dt.DepartmentCapacity ,
lr.LecturerID ,lr.LecturerName ,lr.DepartmentID ,lr.LecturerHighestQualification,lr.LecturerAge

 	   FROM enrol.Student AS st
   INNER JOIN enrol.Department AS dt
   ON st.DepartmentID=dt.DepartmentID
   INNER JOIN enrol.Address AS ad
   ON st.AddressID=ad.AddressID
   INNER JOIN enrol.Lecturer AS lr
   ON st.DepartmentID=lr.DepartmentID;


--g.	Display all Student with Address, Department and Lecturer Information who belongs to either “ME” or “ECE” department.
   SELECT
st.StudentFirstName,st.StudentLastName ,st.StudentMobile ,st.StudentRollNo ,st.StudentDOB ,st.DepartmentID,
ad.StreetAddress,ad.City
,dt.DepartmentName,dt.DepartmentID
,lr.LecturerName
from enrol.Student st 
Inner Join enrol.Address ad On st.AddressID = ad.AddressID
 		Inner Join enrol.Department dt On st.DepartmentID = dt.DepartmentID
 		Inner Join enrol.Lecturer lr On st.DepartmentID = lr.DepartmentID
Where dt.DepartmentName in ('ME','ECE');


--h.	Display Student with Department and their Lecturer information based on the LecturerHighestQualification either “MS” or “PhD”.
SELECT 
st.StudentFirstName,st.StudentLastName ,st.StudentMobile ,st.StudentRollNo ,st.StudentDOB ,st.DepartmentID
,dt.DepartmentName,dt.DepartmentID
 ,lr.LecturerName
 		from enrol.Student st 

Inner Join enrol.Department dt On st.DepartmentID = dt.DepartmentID
 		Inner Join enrol.Lecturer lr On st.DepartmentID = lr.DepartmentID
		Where lr.LecturerHighestQualification in ('MS','PhD');


--i.	Display Student with Department and Address Information, where student belongs to “Thailand” country.
SELECT st.StudentFirstName,st.StudentLastName ,st.StudentMobile ,st.StudentRollNo ,st.StudentDOB ,st.DepartmentID,
dt.DepartmentName,dt.DepartmentID,
ad.StreetAddress,ad.City
from enrol.Student st 
 		Inner Join enrol.Department dt On st.DepartmentID = dt.DepartmentID
Inner Join enrol.Address ad On st.AddressID = ad.AddressID
Where ad.Country = 'Thailand';


--j.	Display Count of Student, Department wise.
SELECT Count(*) Count,dt.DepartmentName 
 		from enrol.Student st 
 Inner Join enrol.Department dt On st.DepartmentID = dt.DepartmentID Group by dt.DepartmentName;


--k.	Display Count of Lecturer, Department wise.
 SELECT Count(*) Count, dt.DepartmentName 
 from enrol.Department dt Inner Join enrol.Lecturer lr On dt.DepartmentID = lr.DepartmentID Group by dt.DepartmentName;


--l.	Display Count of Student, Country wise.
 SELECT Count(*) Count, ad.Country 
 from enrol.Student st Inner Join enrol.Address ad On st.AddressID = ad.AddressID Group  by ad.Country;

 --                                          12.	Write the following Query based on the above datasets.

--a.	Create new table StudCopy and copy all records from Student table.
SELECT * INTO enrol.StudyCopy FROM enrol.Student;

--b.	Create a new table DeptCopy and copy only the schema from Department table.
SELECT * INTO enrol.DeptCopy FROM enrol.Department WHERE 1=0;

--c.	Create a new table DepartmentCopy and copy all records from Department table.
SELECT * INTO enrol.DepartmentCopy FROM enrol.Department;

--d.	Create a new table AddrCopy and copy only the schema from Address table.
SELECT * INTO enrol.AddrCopy FROM enrol.Address Where 1=0;
Drop table enrol.AddrCopy;

--e.	Create a new table AddrCopy and copy all the records from Address table.
SELECT * INTO enrol.AddrCopy FROM enrol.Address;

--f.	Create a new table LecturerCopy and copy all the records from Lecturer table.
SELECT * INTO enrol.LecturerCopy FROM enrol.Lecturer;



--                                        13.	Write the following Query based on the above datasets.

--a.	Delete all the records from LecturerCopy table.
TRUNCATE TABLE enrol.LecturerCopy;

--b.    Delete all the student information for the students who belong to “IT” department.
DELETE from enrol.Student where DepartmentID=1;

--c.	Delete all the student information for the students who belong to “Indonesia” country.
delete S from [enrol].[Student] S,[enrol].[Address] A where S.AddressID=A.AddressID and country='Indonesia';

--d.	Delete all the student information for the student who belongs to “Nanshi” city.
delete S from [enrol].[Student] S,[enrol].[Address] A where S.AddressID=A.AddressID and city='Nanshi';

--e.	Delete all the student information for the student who belongs to “Bretagne” state.
delete S from [enrol].[Student] S,[enrol].[Address] A where S.AddressID=A.AddressID and State='Bretagne';


--                                            14.	Write the following Query based on the above datasets


--a.	Update StudentMobile for those students who belongs to Department “ME”.
UPDATE [enrol].[Student] set StudentMobile='updated' where DepartmentID=4;

--b.	Update Student DepartmentID as 3, for the StudentID=42.
UPDATE [enrol].[student] set DepartmentID=3 where StudentID=42;

--c.	Update LecturerHighestQualification as “PHd” for the Lecturer whose LecturerHighestQualification= “PhD”.
UPDATE [enrol].[Lecturer] set LecturerHighestQualification='PHd' where LecturerHighestQualification='PhD';

--d.	Update PostalCode as “00000” for the Address which contain NULL as a PostalCode.
UPDATE [enrol].[Address] set [PostalCode]=00000 where [PostalCode] IS NULL;

--e.	Update StudentLastName as “Paul” for the Student whose Name is “Jerry”.
Update [enrol].[Student] Set StudentLastName = 'Paul' where StudentFirstName = 'Jerry'


--------------------------------------------------THANK YOU -------------------------------------------------------------------
