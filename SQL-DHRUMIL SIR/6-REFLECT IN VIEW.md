## a many-to-many relationship between student and course.

##### \----------------------------------------------------------------------------------



###### You have 3 tables:

###### Student

###### &#x20;  ↓

###### Enrollment

###### &#x20;  ↓

###### Course

###### 

###### Enrollment is the middle/linking table.

##### \----------------------------------------------------------------------------------

###### For example:

###### student

###### sid | sname

###### 1   | Rahul

###### 

###### course

###### cid | cname

###### 3   | Python

###### 4   | SQL

###### 

###### enrollment

###### eid | sid | cid

###### 1   | 1   | 3

###### 2   | 1   | 4             Rahul (sid=1) has taken Python (cid=3) and SQL (cid=4).

##### \----------------------------------------------------------------------------------

###### Why do we need Enrollment?

###### \-Because one student can take many courses, and one course can have many students.

###### So:

###### Student ←→ Enrollment ←→ Course

###### Student and Course are not directly connected.

##### \----------------------------------------------------------------------------------

###### The VIEW

###### \--------

###### CREATE VIEW enroll\_full AS

###### SELECT student.sname, course.cname

###### FROM enrollment

###### JOIN student

###### ON student.sid = enrollment.sid

###### JOIN course

###### ON enrollment.cid = course.cid;



###### The view shows:

###### sname | cname

###### Rahul | Python

###### Rahul | SQL



###### If you change Rahul's name or the course name in the original tables, the normal view will reflect it when you query it.

##### \----------------------------------------------------------------------------------

###### One-line memory

###### 

###### Student and Course are connected through Enrollment, and the View combines them to display the relationship.

