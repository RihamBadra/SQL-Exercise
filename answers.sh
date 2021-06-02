###BASIC QUERIES:
1) SELECT Name FROM students;
2) SELECT * FROM students WHERE Age > 30;
3) SELECT * FROM students WHERE Age > 30 AND Gender = "F";
4) SELECT Points FROM students WHERE Name = "Alex";
5) INSERT INTO students (Name, Age, Gender, Points) 
VALUES ("Riham", 21, "F", 999); 
6) UPDATE students SET points=(points+20) WHERE name="Basma";
7) UPDATE students SET points=(points-10) WHERE name="Alex";

### Creating Table
CREATE TABLE "graduates" (
"ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
"Name" TEXT NOT Null UNIQUE,
"Age" INTEGER,
"Gender" TEXT,
"Points" INTEGER,
"Graduation" TEXT
);

INSERT INTO  graduates (Id,Name,Age,Gender,Points)
SELECT Id,Name,Age,Gender,Points FROM students
WHERE name="Layal";

UPDATE graduates
SET Graduation = '08/09/2018'
WHERE name="Layal";

DELETE FROM students WHERE name = "Layal";

### Joins
1) SELECT employees.name, employees.Company, companies.Date
FROM (employees
INNER JOIN companies ON employees.Company = companies.name);

2) SELECT employees.name, employees.Company, companies.Date
FROM (employees
INNER JOIN companies ON employees.Company = companies.name AND Date<2000);

3) SELECT employees.name, companies.name,employees.Role
FROM (employees
INNER JOIN companies ON employees.Company = companies.name )
WHERE employees.Role='Graphic Designer';

### Count & Filter
1) SELECT Name,MAX(Points) FROM students;
2) SELECT AVG(Points) FROM students;
3) SELECT * FROM students WHERE Points=500;
4) SELECT Name FROM students WHERE name LIKE "%s%";
5) SELECT Name,Points FROM students ORDER BY points DESC;
