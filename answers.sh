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


