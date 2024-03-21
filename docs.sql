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
  "type_id" INTEGER NOT NULL,
  "receiveddate" TEXT NOT NULL,
  "viewable" TEXT,
  "candidate_id" INTEGER NOT NULL,
  "doctype_id" INTEGER NOT NULL,
  CONSTRAINT "FK_documents.candidate_id"
    FOREIGN KEY ("candidate_id")
      REFERENCES "candidates"("id"),
  CONSTRAINT "FK_documents.doctype_id"
    FOREIGN KEY ("doctype_id")
      REFERENCES "doctypes"("id")
);

