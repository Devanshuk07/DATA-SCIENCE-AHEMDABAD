### ALTER

#### \-ALTER is used to modify an existing table.



##### You can:

###### \-Add column

###### \-Delete column

###### \-Change column datatype

###### \-Rename column

###### \-Add constraints



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



##### IF YOU FORGET TO USE THE FOREIGN KEY YOU CAN DO IT LATER BY:-(ALTER TABLE)



###### ALTER TABLE child\_table

###### ADD CONSTRAINT fk\_name

###### FOREIGN KEY (table2\_column)

###### REFERENCES parent\_table\_name(table1\_column);

