\-------------------------------------------------------------------------------------------------------------------------------------------------



###### CREATE TABLE student(

###### 

######    sid int AUTO\_INCREMENT,

###### 

######    sname varchar(50) NOT NULL, --(NULL IS COMPULSORY)

###### 

######    scourse varchar(20) NOT NULL,

###### 

######    saddress varchar(100) NOT NULL,

###### 

######    spincode int NOT NULL,

###### 

######    sage int NOT NULL,

###### 

######    sfees int NOT NULL,

###### 

######    semail varchar(30) NULL,

###### 

######    PRIMARY KEY(sid)     // write primary key always at last. best way.

###### 

######    )

\-----------------------------------------------------------------------------------------------------------------------------------------------

##### INSERT:-

##### INSERT INTO customer (cname,caddress,ceducation) VALUES ("jay","Rajkot","bca")



\-------------------------------------------------------------------------------------------------------------------------------------------------

### QUERY:-(SELECT \* FROM)(WHERE)



##### SELECT \* FROM customer WHERE name='jay'/id=22

\-------------------------------------------------------------------------------------------------------------------------------------------------

DELETE :-

##### DELETE FROM customer WHERE id=1



\-------------------------------------------------------------------------------------------------------------------------------------------------

##### UPDATE:-

##### UPDATE STUDENT

##### SET SFEES=60000

##### WHERE SID=1;



\-------------------------------------------------------------------------------------------------------------------------------------------------

#### TO UPDATE MULTIPLE COLUMNS:-



##### UPDATE student

##### SET sname = 'Rahul Patel',

##### &#x20;   sfees = 65000

##### WHERE sid = 1;

\-------------------------------------------------------------------------------------------------------------------------------------------------

##### FOREIGN KEY :-

##### CREATE TABLE student(

##### studentid int AUTO\_INCREMENT,

##### name varchar(30) NOT NULL,

##### PRIMARY KEY(studentid)

##### )

##### 

##### CREATE TABLE course(

##### ID int AUTO\_INCREMENT,

##### name VARCHAR(40) NOT NULL,

##### sid int      --THIS IS NOT COURSE COLUMN BUT WILL SHOW COLUMN FOR STUDENTID(we want to create the part of student table in course so).



##### FORIEGN KEY(sid)(name given in this table) REFERENCE student(studentid)(original primary key in student table)--(from student table id).

##### PRIMERY KEY(id)

##### )

\-------------------------------------------------------------------------------------------------------------------------------------------------

##### VIEW:-

##### CREATE VIEW student\_view AS

##### SELECT name, age

##### FROM student;

\-------------------------------------------------------------------------------------------------------------------------------------------------

###### SIMPLE INDEX:-CREATE INDEX index\_name ON student(name)

\-------------------------------------------------------------------------------------------------------------------------------------------------

###### COMPOSITE INDEX:-CREATE INDEX student\_nam\_add ON student(name,address)

\-------------------------------------------------------------------------------------------------------------------------------------------------

###### UNIQUE INDEX:-CREATE UNIQUE INDEX student\_mobile ON student(mobile no.)

\-------------------------------------------------------------------------------------------------------------------------------------------------

#### DROP INDEX index\_name ON table\_name

\-------------------------------------------------------------------------------------------------------------------------------------------------

##### 1)INNER JOIN:-

##### SELECT student.sname, course.course

##### FROM student

##### INNER JOIN course

##### ON student.sid = course.sid;

\-------------------------------------------------------------------------------------------------------------------------------------------------

##### LEFT JOIN:-

###### SELECT pupil.name,pupil.age, course.name,course.fees

###### FROM pupil

###### LEFT JOIN course

###### ON pupil.pupil\_id(foreign\_key)=course.course\_id(primary\_key in course) (//ALWAYS TAKE LINKED TABLE COLUMNS).

\-------------------------------------------------------------------------------------------------------------------------------------------------

#### FULL JOIN:-

###### SELECT pupil.p\_name, course.p\_course

###### FROM pupil

###### LEFT JOIN course

###### ON pupil\_id=course\_id

###### 

###### UNION

###### 

###### SELECT pupil.p\_name, course.p\_course

###### FROM pupil

###### RIGHT JOIN course

###### ON pupil\_id=course\_id.

\-------------------------------------------------------------------------------------------------------------------------------------------------

#### RIGHT JOIN:-

###### SELECT pupil. name,pupil.age, course.name,course.fees

###### FROM pupil

###### RIGHT JOIN course

###### ON pupil.pupil\_id(foreign\_key)=course.course\_id(primary\_key in course) (//ALWAYS TAKE LINKED TABLE COLUMNS).

\-------------------------------------------------------------------------------------------------------------------------------------------------

#### CROSS JOIN = Everyone with Everyone. 😄

###### SELECT \*

###### FROM student

###### CROSS JOIN course;

\------------------------------------------------------------------------------------------------------------------------------------------------

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

#### 

#### QUERY:-(MAX PRICE)

##### SELECT MAX(price) FROM products



#### QUERY:-(MIN SALARY)

##### SELECT MIN(salary) FROM employee.

\------------------------------------------------------------------------------------------------------------------------------------------------

###### SYNTAX:-(SINGLE-FETCH)

###### 

###### DELIMITER $$

###### 

###### CREATE PROCEDURE customer\_fetch(

###### 

###### &#x09;IN xid int

###### 

###### )

###### 

###### BEGIN

###### &#x09;SELECT \* FROM customer WHERE cid=xid;

###### END $$

###### 

###### DELIMITER ;

\------------------------------------------------------------------------------------------------------------------------------------------------

###### SYNTAX:-TRIGGER (AFTER INSERT)

###### 

###### DELIMITER $$

###### CREATE TRIGGER trigger-name

###### AFTER INSERT ON table1    //mess-entered-user

###### FOR EACH ROW

###### 

###### BEGIN

###### INSERT INTO table2(mess-column-name) VALUES(message-to-show)  //mess-shown

###### END $$

###### 

###### DELIMITER ;          User enters data in table1 → trigger automatically runs → message is inserted into table2.





\------------------------------------------------------------------------------------------------------------------------------------------------

### ALTER :-



### QUERY:-(TO ADD COLUMN)

##### ALTER TABLE table\_name

##### ADD age int



### QUERY:-(MODIFY COLUMN DATATYPE)

##### ALTER TABLE table\_name

##### MODIFY column\_name type\_name



### QUERY:-(ADD NOT NULL)

##### ALTER TABLE table\_name

##### MODIFY column\_name int NOT NULL.





### QUERY:-(DROP COLUMN)

##### ALTER TABLE table\_name

##### DROP COLUMN column\_name.

### 

### QUERY:-(RENAME COLUMN)

##### ALTER TABLE table\_name

##### RENAME COLUMN old\_name TO new\_name;



### QUERY:-(ADD A COLUMN TO SPECIFIC POSITION)

##### ALTER TABLE pupil

##### ADD email VARCHAR(100) AFTER name;

\------------------------------------------------------------------------------------------------------------------------------------------------

##### OVER()

##### 

##### SELECT emp\_name,department,AVG(salary)              like/AS(ALIAS) you cannot use.

##### over (PARTITION BY department) AS dept\_avg

##### FROM employee;

##### 

##### SELECT emp\_name,salary,RANK()

##### over (ORDER BY salary DESC) AS ranking

##### FROM employee

