PRAGMA foreign_keys = on;

CREATE TABLE "productcategories" (
  "id" INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL
);

CREATE TABLE "regions" (
  "id" INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL
);

CREATE TABLE "salesreps" (
  "id" INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL
);

CREATE TABLE "products" (
  "id" INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL,
  "units" INTEGER NOT NULL,
  "cost" NUMERIC NOT NULL,
  "productcat_id" INTEGER NOT NULL REFERENCES "productcategories"("id"),
  "region_id" INTEGER NOT NULL REFERENCES "regions"("id"),
  "salesrep_id" INTEGER NOT NULL REFERENCES "salesreps"("id")
);

INSERT INTO productcategories (id, name) VALUES (1, 'Appliances');
INSERT INTO productcategories (id, name) VALUES (2, 'Binders and Binder Accessories');
INSERT INTO productcategories (id, name) VALUES (3, 'Bookcases');
INSERT INTO productcategories (id, name) VALUES (4, 'Computer Peripherals');
INSERT INTO productcategories (id, name) VALUES (5, 'Copiers and Fax');
INSERT INTO productcategories (id, name) VALUES (6, 'Office Machines');
INSERT INTO productcategories (id, name) VALUES (7, 'Paper');
INSERT INTO productcategories (id, name) VALUES (8, 'Pens & Art Supplies');
INSERT INTO productcategories (id, name) VALUES (9, 'Rubber Bands');
INSERT INTO productcategories (id, name) VALUES (10, 'Scissors, Rulers and Trimmers');

INSERT INTO salesreps (id, name) VALUES (1, 'Sean Braxton');
INSERT INTO salesreps (id, name) VALUES (2, 'Scott Cohen');
INSERT INTO salesreps (id, name) VALUES (3, 'Helen Wasserman');
INSERT INTO salesreps (id, name) VALUES (4, 'Dean Percer');
INSERT INTO salesreps (id, name) VALUES (5, 'Bill Overfelt');
INSERT INTO salesreps (id, name) VALUES (6, 'Alan Barnes');
INSERT INTO salesreps (id, name) VALUES (7, 'Aaron Smayling');

INSERT INTO regions (id, name) VALUES (1, 'South');
INSERT INTO regions (id, name) VALUES (2, 'East');
INSERT INTO regions (id, name) VALUES (3, 'West');
INSERT INTO regions (id, name) VALUES (4, 'Central');

INSERT INTO products (name, units, cost, productcat_id, region_id, salesrep_id) VALUES ('Logitech Internet Navigator Keyboard', 4, 38.99, 4, 3, 2);
INSERT INTO products (name, units, cost, productcat_id, region_id, salesrep_id) VALUES ('Microsoft Internet Keyboard', 2, 79.99, 4, 2, 1);
INSERT INTO products (name, units, cost, productcat_id, region_id, salesrep_id) VALUES ('Holmes HEPA Air Purifier', 1, 169.99, 1, 1, 7);
INSERT INTO products (name, units, cost, productcat_id, region_id, salesrep_id) VALUES ('Avery Flip-Chart Easel Binder, Black', 2, 22.99, 2, 4, 3);
INSERT INTO products (name, units, cost, productcat_id, region_id, salesrep_id) VALUES ('Bush Westfield Collection Bookcases, Fully Assembled', 2, 259.99, 1, 3, 5);
INSERT INTO products (name, units, cost, productcat_id, region_id, salesrep_id) VALUES ('Boston 1730 StandUp Electric Pencil Sharpener', 8, 19.99, 8, 2, 4);
