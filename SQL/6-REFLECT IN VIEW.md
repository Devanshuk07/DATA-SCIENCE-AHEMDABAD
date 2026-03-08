## HOW TO CREATE A TABLE IN WHICH STUDENT COURSE IS LINED WITH COURSE.WHILE CHANGING THE STUDENT COURSE IT REFLECTS IN VIEW.



##### CREATING TABLE OF STUDENT:-

##### CREATING TABLE OF COURSE:-



#### THEN CREATING TABLE OF ENROLLMENT WITH FOREIGN KEY.



##### CREATE TABLE enrollment(

##### eid int AUTO\_INCREMENT,

##### sid int,

##### FOREIGN KEY(sid) REFRENCES student(sid)

##### cid int,

##### FOREIGN KEY(cid) REFRENCES course(cid)

##### PRIMARY KEY(eid)

##### )



###### But student and course are not directly related.

###### 

###### They are related through enrollment.

###### 

###### SIMPLE WAY TO REMEMBER:-

###### 

###### Student --(takes)--> Enrollment --(of)--> Course



#### QUERY:-



###### CREATE VIEW enroll\_full AS

###### SELECT student.sname, course.cname

###### FROM student

###### JOIN enrollment

###### ON student.sid = enrollment.sid  //because enrollment has sid also.

###### JOIN course

###### ON enrollment.cid = course.cid





##### BY THIS QUERY:-The view stores the query, not the data.SO IT WILL REFLECT IN VIEW TABLE.



##### IF YOU WANT TO DELETE A STUDENT COURSE WHICH HAS ASSIGNED 3 COURSE TO 1 STUDENT.YOU HAVE TO DELETE FROM ENROLLMENT NOT FROM STUDENT OR COURSE TABLE.

##### ALSO DELETE THE SPECIFIC COURSE FROM STUDENT:-



### QUERY:-(DELETE SPECIFIC COURSE FROM STUDENT)

###### DELETE FROM enrollment

###### WHERE sid=1 AND cid=3

