-- CREATE DATABASE COLLEGE;
USE COLLEGE;
-- CREATE TABLE STUDENT_DETAILS(
ID INT PRIMARY KEY,
NAME VARCHAR(80),
AGE INT NOT NULL
);

INSERT INTO STUDENT_DETAILS VALUES(101,"TEJASWINI",33);
INSERT INTO STUDENT_DETAILS VALUES(102,"NANDHU",22);

SELECT * FROM STUDENT_DETAILS;

create table class_details(
class_id int primary key,
class_name varchar(10)
);
insert into class_details values(101,'I'),(102,'II'),(103,'III');
select * from class_details;
update class_details set class_id=202 where class_id=102;

-- foreign key example
create table student(
id int primary key,
name varchar(30),
age int,
class int,
foreign key(class) references class_details(class_id)
on update cascade
on delete cascade
);
insert into student values (1003,'krish',9,102);
select * from student;

-- DEFAULT

create table STAFF(
id int primary key,
COMPANY VARCHAR(20) DEFAULT 30000
);
insert into STAFF(ID) values(1001);
SELECT * FROM STAFF;