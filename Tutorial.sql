CREATE TABLE customer (
    cust_id   NUMBER(6),
    cust_name VARCHAR2(30),
    dob       DATE,
    mobile    NUMBER(10),
    address   VARCHAR2(100)
);

SELECT
    *
FROM
    customer;

INSERT INTO customer VALUES (
    100001,
    'Kannan',
    TO_DATE('09/11/2000', 'mm/dd/yyyy'),
    8132437493,
    'Chennai'
);

INSERT INTO customer (
    cust_id,
    cust_name,
    dob,
    mobile
) VALUES (
    100002,
    'Radha',
    TO_DATE('09/24/2012', 'mm/dd/yyyy'),
    1348374989
);

UPDATE customer
SET
    address = 'Hydrabad'
WHERE
    cust_id = 100002;

ALTER TABLE customer ADD zip NUMBER(6);

UPDATE customer
SET
    zip = '500502'
WHERE
    cust_id = 100001;

ALTER TABLE customer_details RENAME COLUMN mobile_number TO mobile_no;

RENAME customer TO customer_details;

RENAME customer_details TO customer;

ALTER TABLE customer ADD email VARCHAR(15);

DROP TABLE customer;

CREATE TABLE customer (
    cust_id   NUMBER(6),
    cust_name VARCHAR2(50),
    mobile_no NUMBER(10),
    dob       DATE,
    city      VARCHAR2(30),
    email_id  VARCHAR2(30)
);

INSERT INTO customer (
    cust_id,
    cust_name,
    mobile_no,
    dob,
    city,
    email_id
) VALUES (
    100000,
    'Arun',
    9090909090,
    TO_DATE('08/04/2000', 'mm/dd/yyyy'),
    'Chennai',
    'arun@gmail.com'
);

INSERT INTO customer VALUES (
    100001,
    'John',
    9090909030,
    TO_DATE('12/24/1986', 'mm/dd/yyyy'),
    'Bangaluru',
    'john@gmail.com'
);

SELECT
    *
FROM
    customer;

DELETE FROM customer
WHERE
    cust_id = 100001;

CREATE TABLE city (
    city_id   NUMBER(4),
    city_name VARCHAR2(30)
);

insert into city values (10,'Chennai');
insert into city values (20,'Pune');
insert into city values (30,'Hyd');
insert into city values (50,'Mumbai');
insert into city values (40,'Delhi');
insert into city values (60,'Kolkata');

select * from city;

drop table customer;
--- 
create table customer(
cust_id number(6) primary key,
cust_name varchar2(20),
mobile_no number(10) UNIQUE check(length(mobile_no)=10),
age number(3) check(age >= 18),
city_id number(4) references city(city_id)
);

select * from customer;

insert into customer values (100000,'Arun',9090909090,28,20);
insert into customer values (100001,'Arun',8080808080,31,30);
insert into customer values (100002,'Vijay',5050505050,31,10);
insert into customer values (100003,'Ajith',2894738243,23,30);
insert into customer values (100004,'Ramesh',2894738789,31,60);

alter table city add PRIMARY key(city_id);

desc customer;

select cus.CUST_NAME,ct.* from customer cus
right join city ct on ct.city_id = cus.city_id;

select * from all_constraints where table_name = 'customer';

select * from all_constraints where owner like '%TUTORIAL%';
SELECT * FROM all_cons_columns WHERE CONSTRAINT_NAME = 'SYS_C008505';
select * from all_constraints where table_name = 'CUSTOMER';

select acc.* from all_constraints ac
inner join all_cons_columns acc on ac.constraint_name = acc.constraint_name
where acc.table_name = upper('student');

alter table customer 
drop constraint SYS_C008509;

desc customer;

alter table customer
add constraint ct_fk
FOREIGN key (city_id)
referenceS city(city_id)
ON DELETE CASCADE;

select * from customer;
select * from city;

delete from city where city.city_id = 30;

select * from all_tables where owner = 'TUTORIALDB';
select * from all_tab_columns where owner = 'TUTORIALDB';

create table customer_bkp as select * from customer;
create table city_bkp as select * from city;


create table STUDENT(
ROLL_NUMBER number(6),
name varchar2(20),
mobile_no number(10) UNIQUE check(length(mobile_no)=10),
age number(3) check(age >= 18),
city_code number(3) references city(city_id),
PRIMARY KEY(ROLL_NUMBER,name)
);
select * from student;
delete from customer where cust_id = 100000;
alter table customer add primary key (CUST_ID);

insert into student values (100000,'Sham',9090909093,28,40);
insert into student values (100001,'Sham',9090909094,28,50);
insert into student values (100002,'Sham',9090909095,28,60);

select * from student;

create table employee(
EMPNO	number(30),
ENAME	varchar(30),
job varchar(40),	
MGR	number(30),
HIREDATE	date,
SAL	number(10),
COMM	number(10),
DEPTNO number(10)
);

alter table employee modify  job Varchar(30); 
alter table employee modify ENAME	varchar(30);
select * from employee;
DROP  TABLE employee;

SELECT DISTINCT job FROM employee;

select * from tab;

SELECT * FROM EMPLOYEE;
--WHERE  SYSDATE - DJ <= 10000;

select max(sal) as MAXSAL, count(*), emp.deptno ,d.deptname
from EMPLOYEE emp 
inner join DEPT d on d.deptno = emp.deptno
group by emp.deptno,d.deptname
having max(sal) < 120000
order by 2 desc;

select * from DEPT;

select count(*), EMPNAME from EMPLOYEE
group by EMPNAME
having count(*)>1;

create table employee_tutorial
(
emp_id number,
emp_name varchar2(30),
dob date,
salary number,
skillset varchar2(30),
city_name varchar2(30),
country varchar2(30)
);

select * from employee_tutorial;
select * from  employee_tutorial_bkp;

select EMP_NAME,count(*) from employee_tutorial group by EMP_NAME having count(*)>1;

select EMP_NAME,max(rowid) from employee_tutorial group by EMP_NAME;

create table employee_tutorial_bkp as select * from employee_tutorial;

delete from employee_tutorial where rowid not in (select max(rowid) from employee_tutorial group by EMP_NAME);
commit;

select Max(salary),skillset from employee_tutorial group by SKILLSET;

select * from employee_tutorial where (SKILLSET ,salary) in (select SKILLSET,Max(salary) from employee_tutorial group by SKILLSET)

select EMP_ID, EMP_NAME, DOB, SALARY, SKILLSET, CITY_NAME, COUNTRY 
,avg(SALARY)over(),avg(SALARY)over(partition by skillset) ,sum(SALARY) over() from employee_tutorial order by employee_tutorial.skillset desc;

select EMP_ID, EMP_NAME, DOB, SALARY, SKILLSET, CITY_NAME, COUNTRY , sum(SALARY) over(partition by skillset), 
sum(SALARY) over(partition by COUNTRY),
sum(SALARY) over() from employee_tutorial;

select EMP_ID, EMP_NAME, DOB, SALARY, SKILLSET, CITY_NAME, COUNTRY , rank() Over(order by SALARY desc) as RANK 
, dense_rank()Over(partition by COUNTRY order by SALARY desc) as dnsRank from employee_tutorial order by country;


create table t_customer
(
cust_id number,
cust_name varchar2(50),
mobile varchar2(50),
address varchar2(50),
email varchar2(50),
dob date
);


INSERT INTO S_CUSTOMER (CUST_ID, CUST_NAME, MOBILE, ADDRESS, EMAIL, DOB) VALUES ('1000',
'Neena', '515.123.4568', 'Venice', 'NKOCHHAR', TO_DATE('2005-09-21 00:00:00', 'YYYY-MM-DD
HH24:MI:SS'));
INSERT INTO S_CUSTOMER (CUST_ID, CUST_NAME, MOBILE, ADDRESS, EMAIL, DOB) VALUES ('1001',
'Lex', '515.123.4569', 'Texas', 'LDEHAAN', TO_DATE('2001-01-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO S_CUSTOMER (CUST_ID, CUST_NAME, MOBILE, ADDRESS, EMAIL, DOB) VALUES ('1002',
'Alexander', '590.423.4567', 'New York', 'AHUNOLD', TO_DATE('2006-01-03 00:00:00', 'YYYY-MM-DD
HH24:MI:SS'));
INSERT INTO S_CUSTOMER (CUST_ID, CUST_NAME, MOBILE, ADDRESS, EMAIL, DOB) VALUES ('1003',
'Bruce', '590.423.4568', 'Southlake', 'BERNST', TO_DATE('2007-05-21 00:00:00', 'YYYY-MM-DD
HH24:MI:SS'));
INSERT INTO S_CUSTOMER (CUST_ID, CUST_NAME, MOBILE, ADDRESS, EMAIL, DOB) VALUES ('1004',
'David', '590.423.4569', 'South San Francisco', 'DAUSTIN', TO_DATE('2005-06-25 00:00:00', 'YYYY-MM-DD
HH24:MI:SS'));
INSERT INTO S_CUSTOMER (CUST_ID, CUST_NAME, MOBILE, ADDRESS, EMAIL, DOB) VALUES ('1005',
'Valli', '590.423.4560', 'South Brunswick', 'VPATABAL', TO_DATE('2006-02-05 00:00:00', 'YYYY-MM-DD
HH24:MI:SS'));
INSERT INTO S_CUSTOMER (CUST_ID, CUST_NAME, MOBILE, ADDRESS, EMAIL, DOB) VALUES ('1006',
'Diana', '590.423.5567', 'Seattle', 'DLORENTZ', TO_DATE('2007-02-07 00:00:00', 'YYYY-MM-DD
HH24:MI:SS'));
INSERT INTO S_CUSTOMER (CUST_ID, CUST_NAME, MOBILE, ADDRESS, EMAIL, DOB) VALUES ('1007',
'Nancy', '515.124.4569', 'Toronto', 'NGREENBE', TO_DATE('2002-08-17 00:00:00', 'YYYY-MM-DD
HH24:MI:SS'));


merge into t_customer t
using s_customer s
on (s.cust_id=t.cust_id)
when not matched then
insert values(s.cust_id,s.cust_name,s.mobile,s.address,s.email,s.dob)
when matched then
update set t.cust_name=s.cust_name,t.mobile=s.mobile,t.address=s.address,t.email=s.email,
t.dob=s.dob;

merge into t_customer t
using (
select * from s_customer
minus
select * from t_customer
) 
s
on (s.cust_id=t.cust_id)
when not matched then
insert values(s.cust_id,s.cust_name,s.mobile,s.address,s.email,s.dob)
when matched then
update set t.cust_name=s.cust_name,t.mobile=s.mobile,t.address=s.address,t.email=s.email,
t.dob=s.dob;