SET NAMES utf-8;
CREATE DATABASE studentmanager;
USE studentmanager;
CREATE TABLE student
(
 sno INT PRIMARY KEY,
 sname VARCHAR(20) NOT NULL,
 pwd CHAR(3) NOT NULL,
 age INT DEFAULT 20,
 address VARCHAR(40)
);

INSERT INTO student VALUES( 1,'jack','666', 20,'����');
INSERT INTO student VALUES( 2,'rose','123', 40,'����');
INSERT INTO student VALUES( 3,'tom','456', 25,'�Ͻ�');
INSERT INTO student VALUES( 4,'������','888',23 ,'����');
INSERT INTO student VALUES( 5,'������','999', 45,'ϪԴ��·');

INSERT INTO student VALUES( 6,'jack2','666', 20,'����');
INSERT INTO student VALUES( 7,'rose2','123', 40,'����');
INSERT INTO student VALUES( 8,'tom2','456', 25,'�Ͻ�');
INSERT INTO student VALUES( 9,'������2','888',23 ,'����');
INSERT INTO student VALUES( 10,'������2','999', 45,'ϪԴ��·');

INSERT INTO student VALUES( 11,'jack3','666', 20,'����');
INSERT INTO student VALUES( 12,'rose3','123', 40,'����');
INSERT INTO student VALUES( 13,'tom3','456', 25,'�Ͻ�');