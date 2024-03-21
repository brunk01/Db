PRAGMA foreign_keys=on;

CREATE TABLE "candidates" (
  "id" INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
  "fname" TEXT,
  "lname" TEXT NOT NULL,
  "dob" TEXT NOT NULL
);

CREATE TABLE "doctypes" (
  "id" INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
  "name" TEXT
);

CREATE TABLE "documents" (
  "id" INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
  "receiveddate" TEXT NOT NULL,
  "candidate_id" INTEGER NOT NULL,
  "doctype_id" INTEGER NOT NULL,
  CONSTRAINT "FK_documents.candidate_id"
    FOREIGN KEY ("candidate_id")
      REFERENCES "candidates"("id"),
  CONSTRAINT "FK_documents.doctype_id"
    FOREIGN KEY ("doctype_id")
      REFERENCES "doctypes"("id")
);

INSERT INTO doctypes (name) VALUES ('Medical School Diploma');
INSERT INTO doctypes (name) VALUES ('Medical License');
INSERT INTO doctypes (name) VALUES ('Board Certification');
INSERT INTO doctypes (name) VALUES ('Residency Completion Certificate');
INSERT INTO doctypes (name) VALUES ('Fellowship Completion Certificate');
INSERT INTO doctypes (name) VALUES ('Malpractice Insurance');
INSERT INTO doctypes (name) VALUES ('Continuing Medical Education Certificates');

INSERT INTO candidates (fname, lname, dob) VALUES ('John', 'Doe', '1985-04-12');
INSERT INTO candidates (fname, lname, dob) VALUES ('Jane', 'Smith', '1990-08-05');
INSERT INTO candidates (fname, lname, dob) VALUES ('Emily', 'Johnson', '1983-11-22');
INSERT INTO candidates (fname, lname, dob) VALUES ('Michael', 'Brown', '1975-02-15');
INSERT INTO candidates (fname, lname, dob) VALUES ('Chris', 'Davis', '1992-07-09');
INSERT INTO candidates (fname, lname, dob) VALUES ('Patricia', 'Martinez', '1988-03-30');
INSERT INTO candidates (fname, lname, dob) VALUES ('David', 'Garcia', '1979-09-14');
INSERT INTO candidates (fname, lname, dob) VALUES ('Sarah', 'Wilson', '1982-12-01');
INSERT INTO candidates (fname, lname, dob) VALUES ('James', 'Anderson', '1994-05-19');
INSERT INTO candidates (fname, lname, dob) VALUES ('Laura', 'Thomas', '1986-01-27');

INSERT INTO documents (receiveddate, candidate_id, doctype_id) VALUES ('2023-01-15', 1, 1);
INSERT INTO documents (receiveddate, candidate_id, doctype_id) VALUES ('2023-02-20', 2, 2);
INSERT INTO documents (receiveddate, candidate_id, doctype_id) VALUES ('2023-03-10', 3, 3);
INSERT INTO documents (receiveddate, candidate_id, doctype_id) VALUES ('2023-04-05', 4, 4);
INSERT INTO documents (receiveddate, candidate_id, doctype_id) VALUES ('2023-05-21', 5, 5);
INSERT INTO documents (receiveddate, candidate_id, doctype_id) VALUES ('2023-06-11', 6, 6);
INSERT INTO documents (receiveddate, candidate_id, doctype_id) VALUES ('2023-07-30', 7, 1);
INSERT INTO documents (receiveddate, candidate_id, doctype_id) VALUES ('2023-08-15', 8, 2);
INSERT INTO documents (receiveddate, candidate_id, doctype_id) VALUES ('2023-09-05', 9, 3);
INSERT INTO documents (receiveddate, candidate_id, doctype_id) VALUES ('2023-10-25', 10, 4);
