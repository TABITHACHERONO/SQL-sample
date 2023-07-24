--Creating table Students
CREATE TABLE students(
studentsid VARCHAR(10),
studentsname VARCHAR(10),
address VARCHAR(10),
contact VARCHAR(10)
);

---Inserting into students
INSERT INTO students(
studentsid,
studentsname,
address,
contact)
VALUES
('BSCIT021','Tabitha','Bomet','0797763790'),
('BBIT345','Karol','Kiambu','071011123'),
('BSE213','Matindi','Nakuru','0798654321'),
('BSCIT354','Wanjiku','Nairobi','0745678902'),
('BAJ0215','Sheila','Kericho','0786543129')
;

---Checking the students Who are from Kericho 
SELECT
  *
FROM 
  students
WHERE 
  address = 'Kericho'
; 

--Adding a column INT to the table
ALTER TABLE 
  students
ADD 
  age INT
;

---Renaming column age to years
ALTER TABLE 
  students
RENAME COLUMN 
  age TO years
;


SELECT * FROM students;

---Dropping column years from the table
ALTER TABLE students
DROP COLUMN 
  years
;

---Counting students from Nairobi
SELECT COUNT
  (studentsname) AS studentcount
FROM 
  students
WHERE 
  address = 'Nairobi'
;

---Ordering the table by Address
SELECT 
  *
FROM 
  students
ORDER BY 
  address
;

---Ordering the table by Address Descending
SELECT 
  *
FROM 
   students
ORDER BY 
   address DESC
;  

---Ordering the table by Address Descending and Studentname Ascending
SELECT 
*
FROM 
    students
ORDER BY 
    address DESC,
    studentsname ASC
;



SELECT address
FROM students
WHERE address IS NOT NULL;

---Updating address and username based on some Condition
UPDATE students
SET 
  address = 'Bomet',
  studentsname = 'Tabitha'
WHERE
  studentsid = 'BSCIT0121'
;

--- Always make sure you include a condition so as not to alter what you don't intend to
UPDATE 
  students
SET 
  address = 'Bomet'
; 

---Updating the contact for studentname tabitha
UPDATE 
  students
SET 
  contact = '0797763790'
WHERE 
  studentsname = 'Tabitha'
;


SELECT * FROM students;

---Deleting a student named sheila from the table
DELETE 
FROM 
  students
WHERE 
  studentsname = 'Sheila'
;

SELECT * FROM students;

--Getting only the top 3 elements in the table 
SELECT 
  *
FROM 
  students
LIMIT 3
;



CREATE TABLE products(
productid VARCHAR(5),
productname VARCHAR(10),
supplierid VARCHAR(10), 
categoryid VARCHAR(10),
unit VARCHAR(50),
price VARCHAR(10)
);

SELECT * FROM products

INSERT INTO products(
productid,
productname,
supplierid,
categoryid,
unit,
price)
VALUES
('1','Chais','1','1','10 boxes * 20 bags','18'),
('2','Chang','1','1','24-12 bottles','19'),
('3','syrup','1','2','12-550ml bottles','10'),
('4','cajun','1','2','48-6oz jars','22'),
('5','gumbo','1','2','36boxes','21.35');



SELECT * FROM products;


SELECT *
FROM products
WHERE price
BETWEEN '10' AND '20';



SELECT *
FROM products
WHERE price
NOT BETWEEN '10' AND '20'
;



SELECT *
FROM products
WHERE price BETWEEN '10' AND '20'
AND categoryid NOT IN ('1','2','3');

SELECT 
*
FROM products
WHERE productname 
BETWEEN 'chais' AND 'chang'
ORDER BY productname;
