CREATE TABLE "productcategories" (
  "id" INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL
);

CREATE TABLE "regions" (
  "id" INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL
);

CREATE TABLE "products" (
  "id" INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL,
  "units" INTEGER NOT NULL,
  "cost" NUMERIC NOT NULL,
  "productcat_id" INTEGER NOT NULL,
  "region_id" INTEGER NOT NULL,
  CONSTRAINT "FK_products.productcat_id"
    FOREIGN KEY ("productcat_id")
      REFERENCES "productcategories"("id"),
  CONSTRAINT "FK_products.region_id"
    FOREIGN KEY ("region_id")
      REFERENCES "regions"("id")
);

