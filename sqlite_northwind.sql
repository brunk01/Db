PRAGMA foreign_keys = on;

CREATE TABLE "Employees" ( 
 "id" INTEGER NOT NULL UNIQUE, 
 "lastname" TEXT NOT NULL,
 "firstname" TEXT,
 "title_id" INTEGER NOT NULL REFERENCES Titles("id"),
 "birthdate" TEXT,
 "salary" DECIMAL,
 "dep_id" INTEGER NOT NULL REFERENCES "Departments"("id"), 
 "answers_to" INTEGER REFERENCES "Employees"("id"), 
 PRIMARY KEY("id" AUTOINCREMENT)); 
 
 CREATE TABLE "Departments" ( 
 "id" INTEGER NOT NULL UNIQUE, 
 "dep_name" TEXT NOT NULL UNIQUE,
 PRIMARY KEY("id" AUTOINCREMENT));  
 
 CREATE TABLE "Titles" ( 
 "id" INTEGER NOT NULL UNIQUE, 
 "title_name" TEXT NOT NULL UNIQUE,
 PRIMARY KEY("id" AUTOINCREMENT)); 
 
 INSERT INTO Departments (id, dep_name) VALUES (1, 'IT');
 INSERT INTO Departments (id, dep_name) VALUES (2, 'Sales');
 INSERT INTO Departments (id, dep_name) VALUES (3, 'Executive');
 INSERT INTO Departments (id, dep_name) VALUES (4, 'Shipping');
 INSERT INTO Departments (id, dep_name) VALUES (5, 'Receiving');

 INSERT INTO Titles (id, title_name) VALUES (1, 'President');
 INSERT INTO Titles (id, title_name) VALUES (2, 'Manager');
 INSERT INTO Titles (id, title_name) VALUES (3, 'Analyst');
 INSERT INTO Titles (id, title_name) VALUES (4, 'Clerk');
 INSERT INTO Titles (id, title_name) VALUES (5, 'Salesman');
  
 INSERT INTO Employees (id, lastname, firstname, title_id, birthdate, salary, dep_id, answers_to) VALUES (1, 'Kayling', 'Jane', 1, '1991-11-18', 6000.00, 3, NULL);
 INSERT INTO Employees (id, lastname, firstname, title_id, birthdate, salary, dep_id, answers_to) VALUES (2, 'Blaze', 'Ken', 2, '1991-06-09', 2750.00, 1, 1);
 INSERT INTO Employees (id, lastname, firstname, title_id, birthdate, salary, dep_id, answers_to) VALUES (3, 'Clare', 'Leo', 2, '1991-04-08', 2550.00, 2, 1);
 INSERT INTO Employees (id, lastname, firstname, title_id, birthdate, salary, dep_id, answers_to) VALUES (4, 'Jonas', 'Jane', 2, '1993-01-12', 2957.00, 4, 1);
 INSERT INTO Employees (id, lastname, firstname, title_id, birthdate, salary, dep_id, answers_to) VALUES (5, 'Madden', 'Jennifer', 3, '1990-03-28', 3100.00, 3, 2);
 INSERT INTO Employees (id, lastname, firstname, title_id, birthdate, salary, dep_id, answers_to) VALUES (6, 'Frank', 'Lisa', 3, '1997-05-14', 3100.00, 1, 3);
 INSERT INTO Employees (id, lastname, firstname, title_id, birthdate, salary, dep_id, answers_to) VALUES (7, 'Sandrine', 'Anita', 4, '1990-12-06', 900.00, 5, 6);
 INSERT INTO Employees (id, lastname, firstname, title_id, birthdate, salary, dep_id, answers_to) VALUES (8, 'Adelyn', 'Robert', 5, '1991-09-29', 1700.00, 2, 3);
 INSERT INTO Employees (id, lastname, firstname, title_id, birthdate, salary, dep_id, answers_to) VALUES (9, 'Wade', 'Robert', 5, '1991-02-20', 400.00, 2, 2);
 INSERT INTO Employees (id, lastname, firstname, title_id, birthdate, salary, dep_id, answers_to) VALUES (10, 'Madden', 'Kate', 5, '1991-09-28', 1350.00, 4, 3);
 INSERT INTO Employees (id, lastname, firstname, title_id, birthdate, salary, dep_id, answers_to) VALUES (11, 'Madden', 'Alain', 5, '1991-09-08', 1350.00, 4, 2);
 INSERT INTO Employees (id, lastname, firstname, title_id, birthdate, salary, dep_id, answers_to) VALUES (12, 'Adnres', 'Christine', 4, '1991-05-23', 1200.00, 4, 10);
 INSERT INTO Employees (id, lastname, firstname, title_id, birthdate, salary, dep_id, answers_to) VALUES (13, 'Jonas', 'Julie', 4, '1991-01-14', 1050.00, 4, 11);
 INSERT INTO Employees (id, lastname, firstname, title_id, birthdate, salary, dep_id, answers_to) VALUES (14, 'Marker', 'Shawn', 4, '1991-08-17', 1400.00, 5, 9);
 
 
 
SELECT d.dep_name, 
e.lastname 
FROM 
Departments d INNER JOIN Employees e ON d.id = e.dep_id
ORDER BY d.dep_name;

 
 SELECT
    e.lastname || ', ' || e.firstname AS employee,
	e.id,
    m.lastname || ', ' || m.firstname AS manager
FROM
    Employees e
INNER JOIN Employees m ON e.id = m.answers_to
ORDER BY
    manager;

SELECT
	d.dep_name,
	e.salary,
    e.lastname || ', ' || e.firstname AS employee,
	e.id,
    m.lastname || ', ' || m.firstname AS manager
FROM
    Employees m
LEFT OUTER JOIN Employees e ON e.id = m.answers_to
JOIN Departments d ON d.id = e.dep_id
WHERE d.dep_name = 'IT'
ORDER BY
    d.dep_name;
