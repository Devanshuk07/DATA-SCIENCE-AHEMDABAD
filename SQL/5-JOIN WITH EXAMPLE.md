#### LETS SAY THAT:-



##### TABLES:-

* ###### STUDENT - STUDENT\_ID , STUDENT\_NAME
* ###### COURSE - COURSE\_ID , COURSE\_NAME
* ###### COURSE\_DURATION\_TABLE - DURATION\_ID , COURSE\_ID(FK) , DURATION
* ###### FEES - FEES\_ID , COURSE\_ID(FK) , COURSE\_FEES
* ###### ENROLLMENT - ENROLLMENT\_ID , STUDENT\_ID(FK) , COURSE\_ID(FK)



##### NOW HOW TO JOIN

##### (TO VIEW ALL STUDENT WITH ITS COURSE\_NAME,COURSE\_FEES, DURATION):-



###### JUST PUT--

###### CREATE VIEW view\_name AS

###### 

###### (THEN YOU WILL GET THE VIEW TABLE ALL WITH SELECT COLUMNS(AS BELOW) AND THEN YOU CAN EVEN ADD MORE STUDENTS WITH COURSES,FEES,DURATION.





\-SELECT studnet\_name, course\_name, course\_fees,duration

(ALL COLUMNS\_NAME YOU WANT IN NEW TABLE)

\-FROM enrollment

(U HAVE TAKEN STUDENT\_ID AND COURSE\_ID 2FK SO ENROLL)

\-JOIN student ON student.studnet\_id = enrollment.studnet\_id

\-JOIN course ON course.course\_id = enrollment.course\_id

\-JOIN course\_duration\_table ON course\_duration\_table.course\_id = course.course\_id

\-JOIN fees ON fees.course\_id = course.course\_id





##### TO GET THE TOTAL FEES PER STUDENT:-

QUERY--



SELECT STUDENT\_COLUMN\_NAME,

SUM(COURSE\_FEES)

FROM STUDENT\_COURSE

GROUP BY STUDENT\_NAME.

