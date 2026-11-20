-- The case of ITC 
-- create database with name Distributors contating Distributor ID , Name, City, Region, Phone 
Create TAble distributors (
  distributorid INTEGER PRIMARY KEY, 
  name TEXT not NULL, 
  city TEXT,
  region TEXT,
  phone TEXT
  );
  --Dropping the table 
  Drop TABLE distributors;
  DROP TABLE products;
  --Create table naming products conating productid, produc name, brand, category, price, stock 
  CREATE TABLE product(
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL UNIQUE,
    brand TEXT,
    category TEXT NOT NULL,
    price REAL check (price > 0),
    stock INTEGER DEFAULT 0
    );
    
    --create table sales with variables salesid, product id, distributor id, sales date, quantity, amount
    CREATE TABLE sales(
      sales_id INTEGER PRIMARY KEY,
      product_id,
      distributorid,
      sales_date TEXT,
      quantity INTEGER CHECK (quantity > 0),
      amount REAL,
      
    FOREIGN KEY (product_id)
        REFERENCES product(product_id),
      

    FOREIGN KEY (distributorid)
        REFERENCES distributors(distributorid)
      );
      
      DROP TABLE sales2;
      DROP TABLE demo;
      
      
      
      
      -- CHECKING THE COLUMN WETHER THE VARIABLE HAVE BEEN CREATED OR NOT 
      PRAGMA TABLE_info(distributors);
      PRAGMA table_info(product);
      PRAGMA table_info(sales);
      
      -- INSERTING DATA INTO TABLE PRODUCT
      -- PRODUCT ID 1, PRODUCCT NAME ASHIRWAAD 5 KG, BRAND ASHIRWAAD, CATEGORGY STAPLE, PRICE 265, STOCK 120
      
      INSERT INTO product VALUES( 1, 'ashirwaad 5 kg', 'ashirwaad', 'staple', 265, 120);
  

INSERT INTO product VALUES (2, 'Aashirvaad Salt', 'Aashirvaad', 'Staples', 28, 300);

INSERT INTO product VALUES (3, 'Sunfeast Dark Fantasy', 'Sunfeast', 'Biscuits', 40, 500);

INSERT INTO product VALUES (4, 'Sunfeast Marie Light', 'Sunfeast', 'Biscuits', 30, 450);

INSERT INTO product VALUES (5, 'Bingo Mad Angles', 'Bingo', 'Snacks', 20, 600);

INSERT INTO product VALUES (6, 'Bingo Tedhe Medhe', 'Bingo', 'Snacks', 10, 800);

INSERT INTO product VALUES (7, 'Yippee Noodles', 'Yippee', 'Noodles', 14, 700);

INSERT INTO product VALUES (8, 'Classmate Notebook', 'Classmate', 'Stationery', 55, 400);

INSERT INTO product VALUES (9, 'Fabelle Chocolate', 'Fabelle', 'Chocolate', 180, 90);

INSERT INTO product VALUES (10, 'Fiama Soap', 'Fiama', 'Personal Care', 70, 250);

INSERT INTO product VALUES (11, 'Vivel Soap', 'Vivel', 'Personal Care', 45, 0);

INSERT INTO product VALUES (12, 'Mangaldeep Agarbatti', 'Mangaldeep', 'Home Care', 60, 150);
      SELECT*FROM product;