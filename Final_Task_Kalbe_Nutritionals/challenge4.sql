-- Question 1
-- Create the kalbenutritionals database
CREATE DATABASE kalbenutritionals;

-- Question 2
-- Create an 'Inventory' Table
CREATE TABLE inventory (
	item_code INT NOT NULL,
	item_name varchar NOT NULL,
	item_price decimal NOT NULL,
	item_total int NOT NULL,
	CONSTRAINT inventory_pk PRIMARY KEY (item_code)
);

--Question 3
--insert data into inventory table
INSERT INTO inventory
(item_code,item_name, item_price, item_total)
VALUES
(2341, 'Promag Tablet', 3000, 100),
(2342, 'Hydro Coco 250ML', 7000, 20),
(2343, 'Nutrive Benecol 100ML', 20000, 30),
(2344, 'Blackmores Vit C 500Mg', 95000, 45),
(2345, 'Entrasol Gold 370G', 90000, 120);

--Question 4
--Show Item_name that has the highest number in item_total
SELECT item_name
FROM inventory
WHERE item_total = (SELECT max(item_total) FROM Inventory);

--Question 5
--Update the Item_price of the output of question bullet
UPDATE inventory
SET item_price = 95000
WHERE item_total = (SELECT max(item_total) FROM Inventory);

--Question 6
--What will happen if we insert another Item_name
--with Item_code of 2343 into the table?
INSERT INTO inventory
(item_code, item_name, item_price, item_total)
VALUES
(2343,'Yoghurt', 2500, 65);

--SQL Error [23505]: ERROR: duplicate key value violates unique constraint "inventory_pk"
--  Detail: Key (item_code)=(2343) already exists.

--Question 7
--Delete the Item_name that has the lowest
--number of Item_total
DELETE FROM inventory
WHERE item_total = (
    SELECT min(item_total) FROM inventory
);

SELECT * FROM inventory

