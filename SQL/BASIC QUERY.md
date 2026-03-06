# QUERY:-



#### 1)CREATE DATABASE -NAME-  (TO CREATE A DATABASE)

#### 

#### 2)DROP DATABASE -SAMENAME-   (TO DROP DATABASE/DELETE)

#### 



###### 

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

###### 

 



 



 



// COLUMNS - CustomerID , CustomerNAME, CADDRESS, CEDUCATION



 



//STORE- DATA CONSTRAIN(TABLE-SCHEMA DESIGN) - DATA TYPE - VARCHAR - 255-60 NUM STORE,TEXT,SPECIAL CHARACTOR(THIS ALL CAN BE STORED)



//NUMBER - INT , PK- PRIMARY KEY- UNIQUE(DONT ALLOW SAME NUMBER), AUTO INCREMENT, NOT NULL(YOU CANNOT LEAVE NULL), NULL











### QUERY:-(INSERT INTO)(VALUES)



INSERT INTO customer (cname,caddress,ceducation) VALUES ("jay","Rajkot","bca")







\#### --TO INSERT MULTIPLE:-



INSERT INTO student (name,course,address,pincode,age,coursefees,day,dateofbirth) VALUES ('mirza','bca','ghaziyabad','90','22','20000','friday','22 march');



INSERT INTO student (name,course,address,pincode,age,coursefees,day,dateofbirth) VALUES ('ruhi','btech','delhi','92','23','10000','monday','30 march');



INSERT INTO student (name,course,address,pincode,age,coursefees,day,dateofbirth) VALUES ('diya','bca','jamnagar','22','19','30000','friday','22 july');



INSERT INTO student (name,course,address,pincode,age,coursefees,day,dateofbirth) VALUES ('vijay','bcom','morbi','190','33','40000','tuesday','11 april');



INSERT INTO student (name,course,address,pincode,age,coursefees,day,dateofbirth) VALUES ('diku','tech','rajashthan','99','20','30000','monday','2 march');



INSERT INTO student (name,course,address,pincode,age,coursefees,day,dateofbirth) VALUES ('arzoo','btech','tankara','99','27','20000','thursday','25 may');



INSERT INTO student (name,course,address,pincode,age,coursefees,day,dateofbirth) VALUES ('meera','engineer','delhi','99','31','40000','wednesday','19 january')











### QUERY:-(SELECT \\\* FROM)(WHERE)



##### SELECT \\\* FROM customer WHERE name='jay'   (ALWAYS USE ID AFTER WHERE)(AS NAME HAS MANY NAME LIKE JAY SO IT WILL RETURN EVERY QUERY).







### QUERY:-(DELETE FROM)(WHERE)

##### 

##### DELETE FROM customer WHERE id=1 (THIS WILL DELETE THE CID NUMBER 1--ALWAYS REMEMBER SQL NEVER DELETE IT PERMANENTLY ITS ONLY TEMPORORY WHEN BACKUP IS TAKEN IT WILL AGAIN COME)

##### 

##### DELETE FROM customer WHERE name="devu". (IF GIVING THE CNAME,CADDRESS,ETC WITHOUT CID,, IT SHOULD BE IN "" ALWAYS)

##### 









###### --IF WE USE NAME FOR SELECT OR DELETE IT WILL USE TABLE SCAN.

###### 

###### --IF WE USE ID FOR SELECT AND DELETE IT WILL USE ROW SCAN.

###### 

###### --WHILE USING ID MYSQL AUTO CREATE INDEXING TO WORK FAST AND SCAN FAST.

###### 

###### 

###### 

###### --IF WE USE NAME WE HAVE TO CREATE INDEX SO THAT IT CAN WORK FAST AND SCAN FAST.







### QUERY:-(UPDATE SET)(WHERE)



##### UPDATE student SET name="rahul\\\_change" ,address="mumbai\\\_change" WHERE id=3.



###### EX:-(TO UPDATE 30% SALARY OF IT DEPARTMENT)

##### UPDATE employee

##### SET salary=salary+(salary\*0.30)

##### WHERE department="IT"





......

