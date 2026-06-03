### ALTER

#### -ALTER is used to modify an existing table.



##### You can:

###### -Add column

###### -Delete column

###### -Change column datatype

###### -Rename column

###### -Add constraints



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

##### ALTER TABLE course

##### CHANGE name(ALREADY) p\_course(NEW\_NAME) varchar(20)



### QUERY:-(ADD A COLUMN TO SPECIFIC POSITION)

##### ALTER TABLE pupil

##### ADD email VARCHAR(100) AFTER name;



##### IF YOU FORGET TO USE THE FOREIGN KEY YOU CAN DO IT LATER BY:-(ALTER TABLE)



###### ALTER TABLE course

###### ADD CONSTRAINT cstudent

###### FOREIGN KEY (cid)

###### REFRENCES student(sid).



