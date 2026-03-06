###### HOW TO CREATE A JOIN:-

###### -IF YOU HAVE TWO TABLES LIKE PUPIL AND COURSE.

###### -YOU HAVE TO LINK BOTH WITH FOREIGN KEY.

###### THEN YOU CAN CRETE THE JOIN





### JOIN:-(MERGE)(TYPE).(NOTE:-JOIN CANNOT CREATE A TABLE SO WHEN EVER YOU WANT TO SEE THE JOIN YOU HAVE TO RUN THE QUERY).

#### 

#### ///DEPENDS ON YOUR REQUIREMENT.

#### 1)INNER JOIN:- 2TABLE-DISPLAY COMMON DATA OF BOTH TABLE.



#### 2)LEFT JOIN:- LEFT TABLE WHOLE DATA AND (RIGHT AND LEFT) TABLE COMMON DATA.(EX- SELECT CUSTOMER-1(LEFT) ZOYA ORDER-2(RIGHT))

#### 

#### 3)RIGHT JOIN:- RIGHT TABLE WHOLE DATA AND (RIGHT AND LEFT) COMMON DATA.

#### 

#### 4)FULL JOIN:- BOTH TABLE WHOLE DATA.(IN MYSQL DIRECTLY DON'T SUPPORT FULL JOIN)(MYSQL HAVE LEFT,RIGHT JOIN AVAILABLE INBUILT BUT NOT HAVE FULL JOIN)(YOU HAVE TO USE -UNION/INTERSECTION).

#### 

#### 5)SELF JOIN:-

#### 

#### 6)CROSS JOIN:-





#### INNER JOIN:-(Only the matching records from both tables

#### 👉 If there is no match, that row is NOT shown).



###### SELECT pupil. name,pupil.age, course.name,course.fees

###### FROM pupil

###### INNER JOIN course

###### ON pupil.pupil\_id(primary\_key)=course.foreign\_keyname(forign\_key)(always match primary of 1st and foreign key of 2nd).



#### LEFT JOIN:-(All records from the LEFT table

#### 👉 And matching records from the RIGHT table

#### 👉 If no match is found, it shows NULL)



###### SELECT pupil.name,pupil.age, course.name,course.fees

###### FROM pupil

###### LEFT JOIN course

###### ON pupil.pupil\_id(primary\_key)=course.foreign\_keyname(forign\_key)(always match primary of 1st and foreign key of 2nd).



#### RIGHT JOIN:-(All records from the RIGHT table

#### 👉 And matching records from the LEFT table

#### 👉 If no match is found, it shows NULL)



###### SELECT pupil. name,pupil.age, course.name,course.fees

###### FROM pupil

###### RIGHT JOIN course

###### ON pupil.pupil\_id(primary\_key)=course.foreign\_keyname(forign\_key)(always match primary of 1st and foreign key of 2nd).



#### FULL JOIN:-(All rows from LEFT table

#### 👉 All rows from RIGHT table

#### 👉 Matching rows combined

#### 👉 Non-matching rows show NULL)



### QUERY:-

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



#### 

#### SELF JOIN:-

