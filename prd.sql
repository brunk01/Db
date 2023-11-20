CREATE TABLE products (
id INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT, 
product_name TEXT, 
product_cat TEXT, 
sales_rep TEXT, 
units INTEGER, 
cost NUMERIC, 
region TEXT
);