---1.CREATE TABLES

create table Supplier
(SUPP_ID int PRIMARY KEY,
SUPP_NAME varchar(100),
SUPP_CITY varchar(20),
SUPP_PHONE varchar(10));

create table Customer
(CUS_ID int PRIMARY KEY ,
CUS_NAME varchar(40),
CUS_PHONE varchar(10),
CUS_CITY varchar(20),
CUS_GENDER varchar(1));

create table Category(CAT_ID int PRIMARY KEY, CAT_NAME varchar (25));

create table Product(PRO_ID int PRIMARY KEY  ,PRO_NAME varchar (25) ,
PRO_DESC varchar (40),CAT_ID int, 
FOREIGN KEY (CAT_ID) REFERENCES category(CAT_ID)  );

create table ProductDetails(PROD_ID int,PRO_ID int, SUPP_ID int ,PROD_PRICE int, 
PRIMARY KEY (PROD_ID), 
FOREIGN KEY (PRO_ID) references PRODUCT(PRO_ID),
FOREIGN KEY(SUPP_ID) references SUPPLIER(SUPP_ID));
 
create table orders (ORD_ID int,ORD_AMOUNT int,ORD_DATE date,
CUS_ID int ,PROD_ID int,
PRIMARY KEY(ORD_ID), 
FOREIGN KEY (PROD_ID) REFERENCES productdetails(PROD_ID),
FOREIGN KEY (CUS_ID) REFERENCES CUSTOMER(CUS_ID));

create table Rating(RAT_ID int,CUS_ID int,SUPP_ID int ,RAT_RATSTARS int ,
primary key (RAT_ID),
FOREIGN KEY (CUS_ID) REFERENCES CUSTOMER (CUS_ID),
FOREIGN KEY(SUPP_ID) references SUPPLIER(SUPP_ID));

---2.TABLE Inserts ************
---Supplier Table 
INSERT INTO SUPPLIER (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) VALUES (1, 'Rajesh Retails', 'Delhi', '1234567890');
INSERT INTO SUPPLIER (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) VALUES (2, 'Appario Ltd.', 'Mumbai', '2589631470');
INSERT INTO SUPPLIER (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) VALUES (3, 'Knome products', 'Banglore', '9785462315');
INSERT INTO SUPPLIER (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) VALUES (4, 'Bansal Retails', 'Kochi', '8975463285');
INSERT INTO SUPPLIER (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) VALUES (5, 'Mittal Ltd.', 'Lucknow', '7898456532');
--- Customer Table 
insert into customer (cus_id,cus_name,cus_phone,cus_city,cus_gender)values (1,'AAKASH','9999999999','DELHI','M');
insert into customer (cus_id,cus_name,cus_phone,cus_city,cus_gender)values (2, 'AMAN', '9785463215', 'NOIDA', 'M');
insert into customer (cus_id,cus_name,cus_phone,cus_city,cus_gender)values (3, 'NEHA', '9999999999', 'MUMBAI', 'F');
insert into customer (cus_id,cus_name,cus_phone,cus_city,cus_gender)values (4, 'MEGHA', '9994562399', 'KOLKATA', 'F');
insert into customer (cus_id,cus_name,cus_phone,cus_city,cus_gender)values (5, 'PULKIT', '7895999999', 'LUCKNOW', 'M');
---Category TABLE
insert into category values (1,'BOOKS');
insert into category values (2,'GAMES');
insert into category values (3,'GROCERIES');
insert into category values (4,'ELECTRONICS');
insert into category values (5,'CLOTHES');
---PRODUCT TABLE
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) VALUES (1,'GTA','DFJDJFDJFDJFDJFJF',2 );
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) VALUES (2,'TSHIRT','DFDFJDFJDKFD',5 );
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) VALUES (3,'ROG','DFNTTNTNTERND',4 );
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) VALUES (4,'OATS','REURENTBTOTH',3 );
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) VALUES (5,'HARRY POTTER','NBEMCTHTJTH',1 );
---PRODUCTDETAILS TABLE
INSERT INTO PRODUCTDETAILS (PROD_ID, PRO_ID, SUPP_ID, PROD_PRICE) VALUES (1, 1, 2, 1500);
INSERT INTO PRODUCTDETAILS (PROD_ID, PRO_ID, SUPP_ID, PROD_PRICE) VALUES (2, 3, 5, 30000);
INSERT INTO PRODUCTDETAILS (PROD_ID, PRO_ID, SUPP_ID, PROD_PRICE) VALUES (3, 5, 1, 3000);
INSERT INTO PRODUCTDETAILS (PROD_ID, PRO_ID, SUPP_ID, PROD_PRICE) VALUES (4, 2, 3, 2500);
INSERT INTO PRODUCTDETAILS (PROD_ID, PRO_ID, SUPP_ID, PROD_PRICE) VALUES (5, 4, 1, 1000);
---Orders table
INSERT INTO ORDERS (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PROD_ID) VALUES (20, 1500,  '2021-10-12',3,5);
INSERT INTO ORDERS (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PROD_ID) VALUES (25, 30500, '2021-09-16',5,2);
INSERT INTO ORDERS (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PROD_ID) VALUES (26, 2000,  '2021-10-05',1,1);
INSERT INTO ORDERS (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PROD_ID) VALUES (30, 3500,  '2021-08-16',4,3);
INSERT INTO ORDERS (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PROD_ID) VALUES (50, 2000,  '2021-10-06',2,1);
---RATING TABLE 
INSERT INTO RATING (RAT_ID, CUS_ID, SUPP_ID, RAT_RATSTARS) VALUES (1, 2, 2, 4);
INSERT INTO RATING (RAT_ID, CUS_ID, SUPP_ID, RAT_RATSTARS) VALUES (2, 3, 4, 3);
INSERT INTO RATING (RAT_ID, CUS_ID, SUPP_ID, RAT_RATSTARS) VALUES (3, 5, 1, 5);
INSERT INTO RATING (RAT_ID, CUS_ID, SUPP_ID, RAT_RATSTARS) VALUES (4, 1, 3, 2);
INSERT INTO RATING (RAT_ID, CUS_ID, SUPP_ID, RAT_RATSTARS) VALUES (5, 4, 5, 4);

---3) Display the number of the customer group by their genders who have placed any order of amount greater than or equal to Rs.3000
SELECT ORDER_T.ORD_AMOUNT,CUS_T.CUS_GENDER, COUNT(*) 
FROM ORDERS ORDER_T
INNER JOIN  CUSTOMER CUS_T ON 
CUS_T.CUS_ID=ORDER_T.CUS_ID
WHERE
ORDER_T.ORD_AMOUNT>=3000
GROUP BY CUS_T.CUS_GENDER;

--- 4) Display all the orders along with the product name ordered by a customer having Customer_Id=2.
SELECT ORDER_T.*,PRODUCT_T.PRO_NAME  
FROM ORDERS ORDER_T
INNER JOIN CUSTOMER CUS_T USING (CUS_ID)
INNER JOIN PRODUCTDETAILS PRODUCTDET_T USING (PROD_ID)
INNER JOIN PRODUCT PRODUCT_T USING (PRO_ID)
WHERE CUS_T.CUS_ID=2;
-- OR
SELECT ORDER_T.*,PRODUCT_T.PRO_NAME 
FROM CUSTOMER CUS_T 
INNER JOIN ORDERS ORDER_T ON
CUS_T.CUS_ID=ORDER_T.CUS_ID 
INNER JOIN PRODUCTDETAILS PRODUCTDET_T ON
ORDER_T.PROD_ID=PRODUCTDET_T.PROD_ID 
INNER JOIN PRODUCT PRODUCT_T ON 
PRODUCTDET_T.PRO_ID=PRODUCT_T.PRO_ID
WHERE CUS_T.CUS_ID=2;
---5) Display the Supplier details who can supply more than one product
SELECT SUPP_T.SUPP_NAME,PRO_NAME,COUNT(*) 
FROM  PRODUCTDETAILS PRODCTDET_T
INNER JOIN SUPPLIER SUPP_T  USING (SUPP_ID)
INNER JOIN PRODUCT PRODUCT_T USING (PRO_ID)
GROUP BY PRODUCT_T.PRO_NAME,SUPP_T.SUPP_NAME
HAVING COUNT(*)>1; 
---6) Find the category of the product whose order amount is minimum.
SELECT MIN(ORDER_T.ORD_AMOUNT),CAT_T.CAT_NAME,CAT_T.CAT_ID FROM ORDERS ORDER_T
INNER JOIN PRODUCTDETAILS PRODUCTDET_T USING (PROD_ID)
INNER JOIN PRODUCT PRODUCT_T USING (PRO_ID) 
INNER JOIN CATEGORY CAT_T USING (CAT_ID) ;
---7) Display the Id and Name of the Product ordered after “2021-10-05”.
SELECT PRODUCT_T.*   FROM ORDERS ORDER_T
INNER JOIN PRODUCTDETAILS PRODUCTDET_T USING (PROD_ID)
INNER JOIN PRODUCT PRODUCT_T USING (PRO_ID)
WHERE ORDER_T.ORD_DATE> '2021-10-05'  ;
---8) Print the top 3 supplier name and id and their rating on the basis of their rating along with the customer name who has given the rating.
SELECT  SUPP_T.*,CUS_T.CUS_NAME FROM 
SUPPLIER SUPP_T INNER JOIN RATING RAT_T USING (SUPP_ID)
INNER JOIN CUSTOMER CUS_T USING (CUS_ID)
INNER JOIN ORDERS ORDER_T USING (CUS_ID)
ORDER BY ORDER_T.ORD_AMOUNT DESC 
LIMIT 3;
---9) Display customer name and gender whose names start or end with character 'A'.
SELECT  * FROM CUSTOMER CUS_T
WHERE CUS_T.CUS_NAME LIKE 'A%'
AND CUS_T.CUS_GENDER='M';
---10) Display the total order amount of the male customers.
SELECT SUM(ORDER_T.ORD_AMOUNT)
FROM 
ORDERS ORDER_T INNER JOIN CUSTOMER CUS_T USING (CUS_ID)
WHERE CUS_GENDER='M';
---11) Display all the Customers left outer join with the orders.
SELECT CUS_T.* 
FROM CUSTOMER CUS_T  LEFT OUTER JOIN  ORDERS ORDER_T USING (CUS_ID);
/*
12) Create a stored procedure to display the Rating for a Supplier if any along with the
Verdict on that rating if any like if rating >4 then “Genuine Supplier” if rating >2 “Average
Supplier” else “Supplier should not be considered”. */

DELIMITER //

CREATE  FUNCTION RATESUPPLIER (P_SUPP_ID INT)
RETURNS VARCHAR(20)
BEGIN
DECLARE v_rating varchar (20);
SELECT CASE RAT_RATSTARS
WHEN 5 THEN  "GENUINE SUPPLIER"
WHEN 4 THEN "GENUINE SUPPLIER" 
WHEN 3 THEN  "AVERAGE SUPPLIER" 
ELSE "Supplier should not be considered"
INTO v_rating 
FROM RATING 
WHERE SUPP_ID =P_SUPP_ID ;
END 

DELIMITER //
//




 































