USE Turbo

--UPDATE Student
--Set Age=33
--WHERE Id=8

--SELECT MAX(Age) FROM Student

--SELECT * FROM Student
--WHERE Age=(SELECT MAX(Age) FROM Student)


--SELECT * FROM Student

--SELECT 'Rasim'

--INSERT INTO Brand([Name])
--VALUES('Lada'),
--	  ('BMW'),
--	  ('Mercedes'),
--	  ('Porche')


--CREATE TABLE Model(
--	Id int PRIMARY KEY IDENTITY(1,1),
--	[Name] nvarchar(30) not null,
--	BrandId int null FOREIGN KEY REFERENCES Brand(Id) 
--)
--INSERT INTO Model([Name], [BrandId])
--VALUES('RS7', 1),
--	  ('Q7', 1),
--	  ('A8',1),
--	  ('M5',2),
--	  ('X7',2),
--	  ('X5', 2),
--	  ('GL 500', 3),
--	  ('CLS 350', 3),
--	  ('Cayenne Turbo S', 4),
--	  ('Panamera', 4),
--	  ('Polo', null),
--	  ('Corolla', null )


--Inner JOIN
--SELECT Model.Name Model, Brand.Name Brand FROM Model
--INNER JOIN Brand ON Model.BrandId=Brand.Id

--LEFT JOIN
--SELECT m.Name Model, b.Name Brand FROM Model m
--LEFT JOIN Brand b ON m.BrandId=b.Id

--RIGHT JOIN
--SELECT m.Name Model, b.Name Brand FROM Model m
--RIGHT JOIN Brand b ON m.BrandId=b.Id

--FULL OUTER JOIN
--SELECT m.Name Model, b.Name Brand FROM Model m
--FULL OUTER JOIN Brand b ON m.BrandId=b.Id

--Non-Equi JOIN
--SELECT Model.Name Model, Brand.Name Brand FROM Model
--INNER JOIN Brand ON Model.BrandId<Brand.Id


--CREATE TABLE Employee(
--	Id int PRIMARY KEY IDENTITY(1,1),
--	[Name] nvarchar(20) not null,
--	Surname nvarchar(20) not null,
--	Phone nvarchar(15) not null,
--	EmployeeId int null FOREIGN KEY REFERENCES Employee(Id)
--)

--INSERT INTO Employee([Name], Surname, Phone, EmployeeId)
--VALUES('Rasim','Quliyev','452', null),
--('Abbas','Agayev','452452', 1),
--('Qasim','Haciyev','453543', 1),
--('Toofiq','Bahramov','7587852', 2),
--('Akif','Abbasov','56343', 3),
--('Sahib','Akbarov','6549879', 2)

--SELF JOIN
--SELECT e1.Name, e1.Surname, e1.Phone, e2.Name+' '+e2.Surname as 'Boss' FROM Employee e1
--INNER JOIN Employee e2 ON e1.EmployeeId=e2.Id

--CEOSS JOIN
--SELECT * FROM Brand
--CROSS JOIN Genre


--INSERT INTO Genre([Name])
--VALUES('Criminal'),
--	  ('Camedy'),
--	  ('Action'),
--	  ('Dram')


--SELECT * FROM Brand
--SELECT * FROM Genre
--SELECT * FROM Model
--SELECT * FROM Employee

SELECT m.[Name] as 'Movie', m.[Date] , g.[Name] 'Genre' FROM GenreToMovie gm
INNER JOIN Movie m ON gm.MovieId=m.Id
INNER JOIN Genre g ON gm.GenreId=g.Id
