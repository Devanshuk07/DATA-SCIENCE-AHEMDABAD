#### HOW TO DELETE A STUDENT WHOSE AGE IS LESS THAN 21.

#### (IF STUDENT TABLE IS PARENT AND ENROLLMENT TABLE IS CHILD)



##### \--NOW IN ENROLLMENT AS YOU HAVE USED FOREIGN KEY.1ST YOU HAVE TO DELETE FROM ENROLLMENT TABEL:



##### QUERY:

##### DELETE FROM enrollment

##### WHERE student\_id IN (

##### SELECT student\_id

##### FROM student

##### WHERE age < 21

##### )



#### NOW AS YOU HAVE DELETED THE CHILD(ENROLLMENT TABLE) COLUMN.

#### THEN YOU CAN DELETE IT FROM STUDENT(PARENT TABLE)



##### QUERY:

##### DELETE FROM student

##### WHERE age < 21;

#### \---------------------------------------------------------------------

#### BUT THEIR IS ALSO AN EXCEPTION :---



##### IF YOU CREATE A FOREIGN KEY ON DELETE CASCADE THEN YOU CAN DELETE ANY PARENT/CHILD

##### AND MYSQL WILL DELETE THAT FROM BOTH PARENT/CHILD TABLE AUTOMATICALLY....

##### 

##### YOU JUST HAVE TO GIVE

##### 

##### FOREIGN KEY (sid)

##### REFERENCES student(sid)

##### ON DELETE CASCADE   ---> JUST WRITE THIS AT END...



###### EXAMPLE:--

###### CREATE TABLE course (

###### &#x20;   course\_id INT PRIMARY KEY,

###### &#x20;   sid INT,

###### &#x20;   course\_name VARCHAR(50),

###### 

###### &#x20;   FOREIGN KEY (sid)

###### &#x20;   REFERENCES student(sid)

###### &#x20;   ON DELETE CASCADE

###### );



