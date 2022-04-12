PRAGMA foreign_keys = on;

CREATE TABLE "Employees" ( 
 "id" INTEGER NOT NULL UNIQUE, 
 "lastname" TEXT NOT NULL,
 "firstname" TEXT,
 "title" TEXT,
 "birthdate" TEXT,
 "salary" DECIMAL,
 "dep_id"  INTEGER NOT NULL REFERENCES "Departments"("id"), 
 PRIMARY KEY("id" AUTOINCREMENT)); 
 
 CREATE TABLE "Departments" ( 
 "id" INTEGER NOT NULL UNIQUE, 
 "dep_name" TEXT NOT NULL UNIQUE,
 PRIMARY KEY("id" AUTOINCREMENT));  
 
 INSERT INTO Departments (id, dep_name) VALUES (1, 'IT');
 INSERT INTO Departments (id, dep_name) VALUES (2, 'Sales');
 INSERT INTO Departments (id, dep_name) VALUES (3, 'Executive');
 INSERT INTO Departments (id, dep_name) VALUES (4, 'Shipping');
 INSERT INTO Departments (id, dep_name) VALUES (5, 'Receiving');
  
 INSERT INTO Employees (lastname, firstname, title, birthdate, salary, dep_id) VALUES ('Kayling', 'Jane', 'President', '1991-11-18', 6000.00, 3);
 INSERT INTO Employees (lastname, firstname, title, birthdate, salary, dep_id) VALUES ('Blaze', 'Ken', 'Manager', '1991-06-09', 2750.00, 1);
 INSERT INTO Employees (lastname, firstname, title, birthdate, salary, dep_id) VALUES ('Clare', 'Leo', 'Manager', '1991-04-08', 2550.00, 2);
 INSERT INTO Employees (lastname, firstname, title, birthdate, salary, dep_id) VALUES ('Jonas', 'Jane', 'Manager', '1993-01-12', 2957.00, 4);
 INSERT INTO Employees (lastname, firstname, title, birthdate, salary, dep_id) VALUES ('Madden', 'Jennifer', 'Analyst', '1990-03-28', 3100.00, 3);
 INSERT INTO Employees (lastname, firstname, title, birthdate, salary, dep_id) VALUES ('Frank', 'Lisa', 'Analyst', '1997-05-14', 3100.00, 1);
 INSERT INTO Employees (lastname, firstname, title, birthdate, salary, dep_id) VALUES ('Sandrine', 'Anita', 'Clerk', '1990-12-06', 900.00, 5);
 INSERT INTO Employees (lastname, firstname, title, birthdate, salary, dep_id) VALUES ('Adelyn', 'Robert', 'Salesman', '1991-09-29', 1700.00, 2);
 INSERT INTO Employees (lastname, firstname, title, birthdate, salary, dep_id) VALUES ('Wade', 'Robert', 'Salesman', '1991-02-20', 400.00, 2);
 INSERT INTO Employees (lastname, firstname, title, birthdate, salary, dep_id) VALUES ('Madden', 'Kate', 'Salesman', '1991-09-28', 1350.00, 2);
 INSERT INTO Employees (lastname, firstname, title, birthdate, salary, dep_id) VALUES ('Madden', 'Alain', 'Salesman', '1991-09-08', 1350.00, 2);
 INSERT INTO Employees (lastname, firstname, title, birthdate, salary, dep_id) VALUES ('Adnres', 'Christine', 'Clerk', '1991-05-23', 1200.00, 4);
 INSERT INTO Employees (lastname, firstname, title, birthdate, salary, dep_id) VALUES ('Jonas', 'Julie', 'Clerk', '1991-01-14', 1050.00, 4);
 INSERT INTO Employees (lastname, firstname, title, birthdate, salary, dep_id) VALUES ('Marker', 'Shawn', 'Clerk', '1991-08-17', 1400.00, 5);
