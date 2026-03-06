# INTER-LINK OF 2 TABLES:-



##### FORIEGN KEY:-

##### PRIMARY KEY:- UNIQUE + AUTO INCREMENT(YOU HAVE TO GIVE)(BOTH)

#### 

#### EX:-

##### 

##### CREATE TABLE student(

##### ID int AUTO\_INCREMENT,

##### name varchar(30) NOT NULL,

##### PRIMARY KEY(id)

##### )

##### 

##### CREATE TABLE course(

##### ID int AUTO\_INCREMENT,

##### name VARCHAR(40) NOT NULL,

##### studentid int      --THIS IS NOT COURSE COLUMN BUT WILL SHOW COLUMN FOR STUDENTID(we want to create the part of student table in course so).



##### FORIEGN KEY(studentid) REFERENCE student(id)       --(from student table id).

##### PRIMERY KEY(id)

##### )



NOW IF A STUDENT BUY A COURSE THEN WE HAVE TO LINK BOTH TABEL.

SO LINKING ALWAYS HAPPENS THROUGH ID.BOTH TABLE ID.



#### FORIGN KEY(FK):-USED TO LINK BOTH ID TO ONE.



##### IF YOU FORGET TO USE THE FOREIGN KEY YOU CAN DO IT LATER BY:-(ALTER TABLE)



###### ALTER TABLE course

###### ADD CONSTRAINT cstudent

###### FOREIGN KEY (cid)

###### REFRENCES student(sid).





#### USING STUDENT AND COURSE IN ENROLLMENT TABLE:-



###### CREATE TABLE enrollment(

###### &nbsp;  eid int AUTO\_INCREMENT,

###### &nbsp;  sid int,     //ALWAYS USE STUDENT\_ID(PRIMARY KEY COLUMN ONLY)

###### &nbsp;  cid int,     //OR IT WILL GIVE ERROR.

###### &nbsp;  FOREIGN KEY (sid)

###### &nbsp;  REFRENCES student\_table\_name(sid)

###### &nbsp;  FOREIGN KEY (cid)

######    REFRENCES course\_table\_name(cid)

###### &nbsp;  PRIMARY KEY(eid)

 

