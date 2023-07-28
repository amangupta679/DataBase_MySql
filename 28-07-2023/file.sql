Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show daqtabases;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'daqtabases' at line 1
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

mysql> use mysql;
Database changed
mysql> create table department(deptno int primary key, deptname text, location text);has context menu
ERROR 1050 (42S01): Table 'department' already exists
    -> create table department(deptno int primary key, deptname text, location text);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'has context menu
create table department(deptno int primary key, deptname text, ' at line 1
mysql> create table department(deptno int primar key,deptname text. location text);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primar key,deptname text. location text)' at line 1
mysql> create table department(deptno int primary key, deptname text, location text);
ERROR 1050 (42S01): Table 'department' already exists
mysql> use department;
ERROR 1049 (42000): Unknown database 'department'
mysql> insert into department values(10,"sales","hyd"),(20,"marketing","mumbai");
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * department;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'department' at line 1
mysql> select * from department;
+--------+-----------+----------+
| deptno | deptname  | location |
+--------+-----------+----------+
|     10 | sales     | hyd      |
|     20 | marketing | mumbai   |
+--------+-----------+----------+
2 rows in set (0.00 sec)

mysql> INSERT INTO EMPLOYEE VALUES(101,'AJAY',1000,10);
ERROR 1146 (42S02): Table 'mysql.employee' doesn't exist
mysql> INSERT INTO department VALUES(101,'AJAY',1000,10);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into department values(101,'ajay',1000);
Query OK, 1 row affected (0.03 sec)

mysql> select * from department;
+--------+-----------+----------+
| deptno | deptname  | location |
+--------+-----------+----------+
|     10 | sales     | hyd      |
|     20 | marketing | mumbai   |
|    101 | ajay      | 1000     |
+--------+-----------+----------+
3 rows in set (0.00 sec)

mysql> create table account(acc_no int primary key auto_increment, balance decimal , opened_date date);
Query OK, 0 rows affected (0.07 sec)

mysql> insert into account(balance,opened_date) values (5000, '2023-05-24');
Query OK, 1 row affected (0.02 sec)

mysql> insert into account(balance,opened_date) values(4000,'2022-10-10');
Query OK, 1 row affected (0.02 sec)

mysql> select * from account ;
+--------+---------+-------------+
| acc_no | balance | opened_date |
+--------+---------+-------------+
|      1 |    5000 | 2023-05-24  |
|      2 |    4000 | 2022-10-10  |
+--------+---------+-------------+
2 rows in set (0.00 sec)

mysql> drop table account ;
Query OK, 0 rows affected (0.08 sec)

mysql> create table account(acc_no int primary key , balance decimal  , opened_date date) auto_increment=7000;
Query OK, 0 rows affected (0.08 sec)

mysql> create table account(acc_no int primary key auto_increment , balance decimal  , opened_date date) auto_increment=7001;
ERROR 1050 (42S01): Table 'account' already exists
mysql> drop table account ;
Query OK, 0 rows affected (0.02 sec)

mysql> create table account(acc_no int primary key auto_increment , balance decimal  , opened_date date) auto_increment=7001;
Query OK, 0 rows affected (0.07 sec)

mysql> insert into account(balance , opened_date) values (5000, '2023-05-23');
Query OK, 1 row affected (0.03 sec)

mysql> insert into account(balance , opened_date) values (15000, '2023-05-24');
Query OK, 1 row affected (0.03 sec)

mysql> select * ffrom account ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ffrom account' at line 1
mysql> ^C
mysql> select * from account ;
+--------+---------+-------------+
| acc_no | balance | opened_date |
+--------+---------+-------------+
|   7001 |    5000 | 2023-05-23  |
|   7002 |   15000 | 2023-05-24  |
+--------+---------+-------------+
2 rows in set (0.00 sec)

mysql> insert into department values (105, 'adas',10000);
Query OK, 1 row affected (0.05 sec)

mysql> select max(salary) from employee;
ERROR 1146 (42S02): Table 'mysql.employee' doesn't exist
mysql> select max(balance) from account ;
+--------------+
| max(balance) |
+--------------+
|        15000 |
+--------------+
1 row in set (0.06 sec)

mysql> INSERT INTO DEPARTMENT VALUES(10,"SALES","CHENNAI");
ERROR 1062 (23000): Duplicate entry '10' for key 'department.PRIMARY'
mysql> INSERT INTO DEPARTMENT VALUES(40,"SALES","CHENNAI");
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM EMPLOYEE;
ERROR 1146 (42S02): Table 'mysql.employee' doesn't exist
mysql> CREATE TABLE EMPLOYEE(EMPID INT PRIMARY KEY,EMPNAME TEXT,SALARY DOUBLE,DEPTNO INT , FOREIGN KEY (DEPTNO) REFERENCES DEPARTMENT(DEPTNO) ON DELETE CASCADE);
Query OK, 0 rows affected (0.13 sec)

mysql> INSERT INTO EMPLOYEE VALUES(101,'AJAY',1000,10);INSERT INTO EMPLOYEE VALUES(107,'BABU',2000,20);INSERT INTO EMPLOYEE VALUES(102,'MOHAN',3000,30);INSERT INTO EMPLOYEE VALUES(103,'ZEBA',4000,10);INSERT INTO EMPLOYEE VALUES(104,'JOHN',2000,20);INSERT INTO EMPLOYEE VALUES(105,'DINESH',4500,30);INSERT INTO EMPLOYEE VALUES(106,'AAKASH',2500,10);
Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`mysql`.`employee`, CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`DEPTNO`) REFERENCES `department` (`deptno`) ON DELETE CASCADE)
Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`mysql`.`employee`, CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`DEPTNO`) REFERENCES `department` (`deptno`) ON DELETE CASCADE)
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM EMPLOYEE;
+-------+---------+--------+--------+
| EMPID | EMPNAME | SALARY | DEPTNO |
+-------+---------+--------+--------+
|   101 | AJAY    |   1000 |     10 |
|   103 | ZEBA    |   4000 |     10 |
|   104 | JOHN    |   2000 |     20 |
|   106 | AAKASH  |   2500 |     10 |
|   107 | BABU    |   2000 |     20 |
+-------+---------+--------+--------+
5 rows in set (0.00 sec)

mysql> SELECT SUM(SALARY),DEPTNO FROM EMPLOYEE GROUP BY DEPTNO HAVING DEPTNO IN(20,30); SELECT SUM(SALARY),DEPTNO FROM EMPLOYEE GROUP BY DEPTNO HAVING DEPTNO IN(10,20); SELECT EMPNAME,SALARY FROM EMPLOYEE WHERE SALARY=(SELECT MAX(SALARY) FROM EMPLOYEE);
+-------------+--------+
| SUM(SALARY) | DEPTNO |
+-------------+--------+
|        4000 |     20 |
+-------------+--------+
1 row in set (0.02 sec)

+-------------+--------+
| SUM(SALARY) | DEPTNO |
+-------------+--------+
|        7500 |     10 |
|        4000 |     20 |
+-------------+--------+
2 rows in set (0.00 sec)

+---------+--------+
| EMPNAME | SALARY |
+---------+--------+
| ZEBA    |   4000 |
+---------+--------+
1 row in set (0.00 sec)

mysql> select * from EMPLOYEE where deptno = (select deptno from employee where empname='Babu');
+-------+---------+--------+--------+
| EMPID | EMPNAME | SALARY | DEPTNO |
+-------+---------+--------+--------+
|   104 | JOHN    |   2000 |     20 |
|   107 | BABU    |   2000 |     20 |
+-------+---------+--------+--------+
2 rows in set (0.03 sec)

mysql> select max(salary) from employee where salary <(select max(salary) from employee);
+-------------+
| max(salary) |
+-------------+
|        2500 |
+-------------+
1 row in set (0.02 sec)

mysql> // join is a query whic fetch data/ rows from multiple tables by joining the row(s) of a table with row(s) of other/ another tables(s).
    -> // inner joins
    -> // outer joins .
    -> inner jjoin fetches the row s witch coontain common data from the given table .
    -> ^C
mysql> outer joins can fetch the rows which conmain common and unknown data from th given tables
    -> ^C
mysql> left outer join
    -> right outer join
    -> full outer join
    -> ^X^C
mysql> truncate table department;
ERROR 1701 (42000): Cannot truncate a table referenced in a foreign key constraint (`mysql`.`employee`, CONSTRAINT `employee_ibfk_1`)
mysql> // truncate + delete you will loose the rfecord permmepaly
    -> ^C
mysql> //truncate table account ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '//truncate table account' at line 1
mysql> // drrop table departmrnt     // will not work but only delte wiil work
    -> ^C
mysql> ^C
mysql> // can not truncate a table whn foeign keys are refering it .
    -> but rows can be deleted by delte command .
    -> // drop table department
    -> / create table departmtny(deptno int  ,  departname text , loscation text );)
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '// can not truncate a table whn foeign keys are refering it .
but rows can be d' at line 1
    -> //insert into department values(30,"it","hyderabaddh"),(40,"hr","delhi);
    "> // select *from  department;
    "> //create table employee values(101,'Ajay',1000,10),(102,"babu",2000,20),(104,'dinesh',4000,40) ),(103,'charan',3000,30),(105,"eashwar",5000,50);
    "> select from department ;
    "> select * from epmployee ;
    ">
