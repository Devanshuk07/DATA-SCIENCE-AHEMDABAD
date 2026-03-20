##### IF YOU HAVE A PRODUCT TABLE WITH PRICE GIVEN YOU CAN USE DESC(DECRESING ORDER QUERY TO SEE THE PRODUCTS WITH DESC PRICES.)



### QUERY:-(DESC ORDER)

##### SELECT \* FROM products

##### ORDER BY price DESC



#### QUERY:-(ASC ORDER)

##### SELECT \* FROM employee

##### ORDER BY hire\_date ASC



#### QUERY:-(AVG SALARY OF EMP)

##### SELECT AVG(salary) FROM employee



#### QUERY:-(COUNT TOTAL NUMBER OF PUPIL)

##### SELECT COUNT(\*) AS total\_pup   //\*-COUNTS THE ALL ROWS EVEN NULL VALUES

##### FROM pupil



##### SELECT COUNT(pupil\_id) AS total\_pup  //PUPIL\_ID-COUNTS NO NULL VALUES.ONLY PUPIL\_ID ROW IS COUNT AND NO OTHER ROWS.

##### FROM pupil



#### QUERY:-(MAX PRICE)

##### SELECT MAX(price) FROM products



#### QUERY:-(MIN SALARY)

##### SELECT MIN(salary) FROM employee.

