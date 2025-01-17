CREATE DATABASE COLLEGE;
USE COLLEGE;


CREATE TABLE STUDENT (
  ROLLNO INT PRIMARY KEY,
  NAME VARCHAR(30),
  MARKS INT NOT NULL,
  GRADE VARCHAR(10),
  CITY VARCHAR(20)
);

INSERT INTO STUDENT 
VALUES
(1001,"YESH",90,"A","TIRUPATI"),
(1002,"RAJ",98,"A","CHITTOOR"),
(1003,"DEVIKA",76,"C","NAGARI"),
(1004,"ABHI",84,"B","TIRUPATI"),
(1005,"KAVI",54,"D","TIRUPATI"),
(1006,"SEOK",99,"A","VIZAG")
;

SELECT NAME, MARKS FROM STUDENT;
SELECT * FROM STUDENT;
SELECT CITY FROM STUDENT;
SELECT DISTINCT CITY FROM STUDENT;
SELECT NAME FROM STUDENT WHERE MARKS>80;
SELECT * FROM STUDENT WHERE CITY="TIRUPATI";

-- AND OPERATOR
SELECT * FROM STUDENT WHERE MARKS<90 AND CITY="TIRUPATI";

-- ARITHEMATIC OPERATOR
SELECT * FROM STUDENT WHERE MARKS+5<100;

-- OR OPERATOR
SELECT * FROM STUDENT WHERE MARKS>80 OR CITY="TIRUPATI";