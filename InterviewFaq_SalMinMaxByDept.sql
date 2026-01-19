

drop table if exists employee_FAQ;

CREATE TABLE employee_FAQ (
    id      NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name    VARCHAR2(100),
    dept    VARCHAR2(100),
    salary  NUMBER
);


INSERT INTO employee_FAQ VALUES (DEFAULT, 'Alexander', 'Admin', 6500);
INSERT INTO employee_FAQ VALUES (DEFAULT, 'Leo', 'Finance', 7000);
INSERT INTO employee_FAQ VALUES (DEFAULT, 'Robin', 'IT', 2000);
INSERT INTO employee_FAQ VALUES (DEFAULT, 'Ali', 'IT', 4000);
INSERT INTO employee_FAQ VALUES (DEFAULT, 'Maria', 'IT', 6000);
INSERT INTO employee_FAQ VALUES (DEFAULT, 'Alice', 'Admin', 5000);
INSERT INTO employee_FAQ VALUES (DEFAULT, 'Sebastian', 'HR', 3000);
INSERT INTO employee_FAQ VALUES (DEFAULT, 'Emma', 'Finance', 4000);
INSERT INTO employee_FAQ VALUES (DEFAULT, 'John', 'HR', 4500);
INSERT INTO employee_FAQ VALUES (DEFAULT, 'Kabir', 'IT', 8000);

select * from employee_FAQ;


--Approach 1
select * from (
select ID, NAME, DEPT, SALARY,MAX(SALARY) over(partition by dept) as MaxSalByDept from employee_FAQ) Emp_calc
where Emp_calc.MaxSalByDept = Emp_calc.SALARY ;

select * from (
select ID, NAME, DEPT, SALARY,MIN(SALARY) over(partition by dept) as MinSalByDept from employee_FAQ) Emp_calc
where Emp_calc.MinSalByDept = Emp_calc.SALARY ;

