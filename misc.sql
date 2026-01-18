select avg(sal), job  from emp
group by job
having avg(sal) > 1500
order by avg(sal) desc;
MYDatabase	1716786304366	SQL	1	0.017
select employee.ename as EmpName , manager.ename as manager from emp employee
left join emp Manager on Manager.empno = employee.mgr;
HRDB	1725827820281	SQL	1	0.012
select * from all_tables where owner = 'TUTORIALDB';
Tutorial	1738548043600	SQL	2	2.187
select * from tab;
SYSTEM	1732463932037	SQL	2	0.017
select * from all_constraints where owner like '%Tutorial%';
Tutorial	1736701361862	SQL	1	0.778
update COURSES
set PREREQ = 'C LANGUAGE and SQL'
where CCODE = 'DOTNET3.5';
Tutorial	1737824705743	SQL	1	0.003
select  job from emp
group by job
having count(*)=3;
TestUser	1732842007387	SQL	1	0.009
alter table customer_details
rename column MOBILE_NUMBER to MOBILE_NO;
TestUser	1732504692868	SQL	1	0.016
--------------------------------------------------------------------------------------
-- Name	       : OT (Oracle Tutorial) Sample Database
-- Link	       : http://www.oracletutorial.com/oracle-sample-database/
-- Version     : 1.0
-- Last Updated: July-28-2017
-- Copyright   : Copyright © 2017 by www.oracletutorial.com. All Rights Reserved.
-- Notice      : Use this sample database for the educational purpose only.
--               Credit the site oracletutorial.com explitly in your materials that
--               use this sample database.
--------------------------------------------------------------------------------------
-- disable FK constraints 
ALTER TABLE countries DISABLE CONSTRAINT fk_countries_regions;
ALTER TABLE locations DISABLE CONSTRAINT fk_locations_countries;
ALTER TABLE warehouses DISABLE CONSTRAINT fk_warehouses_locations;
ALTER TABLE employees DISABLE CONSTRAINT fk_employees_manager;
ALTER TABLE products DISABLE CONSTRAINT fk_products_categories;
ALTER TABLE contacts DISABLE CONSTRAINT fk_contacts_customers;
ALTER TABLE orders DISABLE CONSTRAINT fk_orders_customers;
ALTER TABLE orders DISABLE CONSTRAINT fk_orders_employees;
ALTER TABLE order_items DISABLE CONSTRAINT fk_order_items_products;
ALTER TABLE order_items DISABLE CONSTRAINT fk_order_items_orders;
ALTER TABLE inventories DISABLE CONSTRAINT fk_inventories_products;
ALTER TABLE inventories DISABLE CONSTRAINT fk_inventories_warehouses;
-- enable FK constraints
ALTER TABLE countries ENABLE CONSTRAINT fk_countries_regions;
ALTER TABLE locations ENABLE CONSTRAINT fk_locations_countries;
ALTER TABLE warehouses ENABLE CONSTRAINT fk_warehouses_locations;
ALTER TABLE employees ENABLE CONSTRAINT fk_employees_manager;
ALTER TABLE products ENABLE CONSTRAINT fk_products_categories;
ALTER TABLE contacts ENABLE CONSTRAINT fk_contacts_customers;
ALTER TABLE orders ENABLE CONSTRAINT fk_orders_customers;
ALTER TABLE orders ENABLE CONSTRAINT fk_orders_employees;
ALTER TABLE order_items ENABLE CONSTRAINT fk_order_items_products;
ALTER TABLE order_items ENABLE CONSTRAINT fk_order_items_orders;
ALTER TABLE inventories ENABLE CONSTRAINT fk_inventories_products;
ALTER TABLE inventories ENABLE CONSTRAINT fk_inventories_warehouses;
MYDatabase	1715995876255	Script	1	30.466
select * from emp where comm is not null;
MYTESTDB	1765813354209	SQL	1	0.053
select * from s_customer;
Tutorial	1739115949914	SQL	1	0.015
select avg(sal), job ,deptno from emp
group by job,deptno
having avg(sal) > 1500
order by avg(sal) desc;
MYDatabase	1716786277826	SQL	3	0.012
SELECT
    owner      AS schema_name,
    table_name
FROM all_tables
ORDER BY owner, table_name;
MYTESTDB	1766329347390	SQL	2	0.117
select  ORDERID , count(*) over(PARTITION by ORDERID)  from
sales_ordersarchive;
MYTESTDB	1766368564524	SQL	1	0.059
ALTER TABLE employees_enrich RENAME TO MY_EMP;
MYTESTDB	1766636168193	SQL	1	0.037
select count(*), job from Emp
group by job
having count(*) >10
order by count(*) desc;
*/
 
COMMIT;
END;
TestUser	1732765525325	Script	1	1.9
select count(distinct(job)) from Emp;
MYDatabase	1716784836528	SQL	1	0.008
SELECT max(sal) from emp
where lower(job) like '%manager%';
FINALTESTDB	1760812031135	SQL	2	0.003
select * from SALES;
MYDatabase	1716055882118	SQL	1	0.008
select * from sales;
HRDB	1722828769887	SQL	2	0.016
select e.* , ROW_number() over(PARTITION by e.DEPTNAME order by e.salary desc) from employee e;
Tutorial	1736615240670	SQL	1	0.007
alter table sales
modify store_name varchar2(20);
HRDB	1722794144870	SQL	1	0.415
with average_salary (avg_sal)as (select avg(salary)  from EMPLOYEES)
select e.first_name,e.salary,av.avg_sal from EMPLOYEES e ,average_salary  av where e.salary > av.avg_sal;
HRDB	1722745204891	SQL	1	0.013
SELECT  COUNT(*) , JOB_id
FROM MY_EMP
GROUP BY JOB_id;
MYTESTDB	1766636383353	SQL	1	0.081
select EMP_ID, EMP_NAME, DOB, SALARY, SKILLSET, CITY_NAME, COUNTRY , rank() Over(order by SALARY desc) as RANK  , dense_rank()Over(partition by COUNTRY order by SALARY desc) from employee_tutorial;
Tutorial	1738528105218	SQL	1	0.066
select * from all_constraints where owner like '%Tutorial%';
SYSTEM	1736701413958	SQL	1	0.749
select count(QUANTITY) from sales_orders;
MYTESTDB	1766634802780	Script	1	8.027
select  * from SALES_ORDERS;
MYTESTDB	1766205830892	SQL	1	0.081
select count(QUANTITY) as "Quantity Count", sum(QUANTITY) as "Total Quantity",
sum(SALES) as "Total Sales",
CUSTOMERID 
from sales_orders
group by CUSTOMERID;
MYTESTDB	1766330770958	SQL	1	0.059
select * from revenue;
MYTESTDB	1766370860057	SQL	1	0.059
select * from(select EMPLOYEE_ID, FIRST_NAME, SALARY, DEPARTMENT_ID, avg(SALARY) over() as avgSal
from my_emp) calcTab
where calcTab.salary>calcTab.avgsal;
MYTESTDB	1766705002729	SQL	1	0.054
select max(hire_date),min(hire_date) from my_emp;
MYTESTDB	1766682457344	SQL	1	0.121
with avg_sal as(select avg(salary) as asal  from my_emp)
select e.* from
my_emp e
left join avg_sal on avg_sal.asal<e.salary;
MYTESTDB	1766706467171	SQL	1	0.064
select sum(SALES) over()
from sales_orders;
MYTESTDB	1766347357191	SQL	1	0.07
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE , lead(FIRST_NAME) over(order by HIRE_DATE)
, lead(HIRE_DATE) over(order by HIRE_DATE)
from my_emp order by hire_date;
MYTESTDB	1766684687124	SQL	1	0.072
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE , lead(FIRST_NAME) over(order by HIRE_DATE) After_Name
, lead(HIRE_DATE) over(order by HIRE_DATE) After_Date,  lag(FIRST_NAME) over(order by HIRE_DATE) Before_Name
, lag(HIRE_DATE) over(order by HIRE_DATE) Before_Date
from my_emp order by hire_date;
MYTESTDB	1766684809348	SQL	1	0.066
select * from MY_EMP;
MYTESTDB	1766636181557	SQL	1	0.053
select count(QUANTITY) as "Quantity Count", sum(QUANTITY) as "Total Quantity",CUSTOMERID 
from sales_orders
group by CUSTOMERID;
MYTESTDB	1766330742911	SQL	1	0.054
select sum(SALES), productid as "Total Sales"
from sales_orders
group by productid;
MYTESTDB	1766333022231	SQL	1	0.063
select productid , ORDERDATE, sum(SALES) over(partition by productid,ORDERDATE order by productid) as Total_sale
from sales_orders;
MYTESTDB	1766349329900	SQL	1	0.059
select count(QUANTITY) as "Total Quantity", sum(QUANTITY),CUSTOMERID from sales_orders
group by CUSTOMERID;
MYTESTDB	1766329627919	SQL	1	0.058
select sum(SALES) as "Total Sales"
from sales_orders;
MYTESTDB	1766332825140	SQL	1	0.079
with avg_sal as(select avg(salary) as asal  from my_emp)
select * from
my_emp e,avg_sal a
where e.salary>a.asal;
MYTESTDB	1766706620938	SQL	1	0.056
select sum(SALES) as "Total Sales", productid
from sales_orders
group by productid;
MYTESTDB	1766333040633	SQL	1	0.063
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE 
from my_emp order by hire_date;
MYTESTDB	1766685182991	SQL	3	0.056
truncate table employees_enrich;
MYTESTDB	1766634444381	SQL	1	0.074
select count(QUANTITY) as "Quantity Count", sum(QUANTITY) as "Total Quantity",
CUSTOMERID from sales_orders
group by CUSTOMERID;
MYTESTDB	1766329689673	SQL	1	0.061
select sum(SALES) as "Total Sales", productid,ORDERDATE
from sales_orders
group by productid,ORDERDATE
order by productid;
MYTESTDB	1766349571539	SQL	2	0.041
select * from sales_orders;
-- Step 3: Commit changes
COMMIT;
END LOOP;
COMMIT;
END;
MYTESTDB	1766634370088	SQL	1	0.072
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE , lead(FIRST_NAME) over(order by salary) After_Name
, lead(salary) over(order by salary) After_Date,  lag(FIRST_NAME) over(order by salary) Before_Name
, lag(salary) over(order by salary) Before_Date
from my_emp order by salary;
MYTESTDB	1766691586711	SQL	1	0.058
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE , lead(FIRST_NAME) over(order by HIRE_DATE) After_Name
, lead(HIRE_DATE) over(order by HIRE_DATE) After_Date,  lag(FIRST_NAME) over(order by HIRE_DATE) Before_Name
, lead(HIRE_DATE) over(order by HIRE_DATE) Before_Date
from my_emp order by hire_date;
MYTESTDB	1766684797669	SQL	1	0.06
SELECT
    owner      AS schema_name,
    table_name
FROM all_tables
where owner ='SCOTT'
ORDER BY owner, table_name;
MYTESTDB	1766329373263	SQL	1	0.108
with avg_sal as(select avg(salary)  from my_emp)
select e.* from
my_emp e;
MYTESTDB	1766706360591	SQL	1	0.061
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY ,JOB_ID, RANK() OVER(PARTITION BY JOB_ID ORDER BY SALARY DESC)
FROM MY_EMP;
MYTESTDB	1766638165288	SQL	1	0.067
select distinct(department_id) from MY_EMP;
MYTESTDB	1766680113303	SQL	1	0.066
select * from my_emp order by hire_date;
MYTESTDB	1766704723522	SQL	3	0.054
SELECT
    c.customer_id,
    c.firstname,
    c.lastname,
    SUM(o.sales) AS total_sales,
    RANK() OVER (ORDER BY SUM(o.sales) DESC) AS sales_rank
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.firstname, c.lastname
ORDER BY total_sales DESC;
MYTESTDB	1766210790795	SQL	1	0.08
select  *  from MY_EMP;
MYTESTDB	1766637701613	SQL	1	0.051
-- =========================================================
-- SalesDB Oracle Schema & Seed Data
-- Created: 2025-12-19
-- Note: Uses Oracle 12c+ identity columns (GENERATED BY DEFAULT AS IDENTITY)
-- =========================================================

-- Clean setup: Drop tables if they exist
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Orders CASCADE CONSTRAINTS PURGE';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Products CASCADE CONSTRAINTS PURGE';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Customers CASCADE CONSTRAINTS PURGE';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Employees CASCADE CONSTRAINTS PURGE';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/* =========================================================
   Indexes
   ========================================================= */
CREATE INDEX IX_Orders_ProductID     ON Orders(ProductID);
CREATE INDEX IX_Orders_CustomerID    ON Orders(CustomerID);
CREATE INDEX IX_Orders_SalesPersonID ON Orders(SalesPersonID);
CREATE INDEX IX_Orders_OrderDate     ON Orders(OrderDate);
CREATE INDEX IX_Customers_Country    ON Customers(Country);
CREATE INDEX IX_Products_Category    ON Products(Category);
COMMIT;
/* =========================================================
   Verification queries (optional)
   ========================================================= */
-- Orders per status
-- SELECT OrderStatus, COUNT(*) AS Orders, SUM(Sales) AS TotalSales FROM Orders GROUP BY OrderStatus;
-- Product performance
-- SELECT p.Product, SUM(o.Quantity) AS Units, SUM(o.Sales) AS Revenue
-- FROM Orders o JOIN Products p ON p.ProductID = o.ProductID
-- GROUP BY p.Product ORDER BY Revenue DESC;
-- Salesperson performance
-- SELECT e.FirstName || ' ' || e.LastName AS SalesPerson,
--        COUNT(*) AS Orders, SUM(o.Sales) AS Revenue
-- FROM Orders o JOIN Employees e ON e.EmployeeID = o.SalesPersonID
-- GROUP BY e.EmployeeID, e.FirstName, e.LastName ORDER BY Revenue DESC;
MYTESTDB	1766208505108	Script	1	4.098
select * from employees_enrich;
MYTESTDB	1766634811723	SQL	3	0.049
select sum(SALES) as "Total Sales", productid
from sales_orders
group by productid
order by productid;
MYTESTDB	1766349425708	SQL	3	0.043
select sum(SALES) as "Total Sales", productid
from sales_orders
group by productid
order by productid desc;
MYTESTDB	1766333080673	SQL	1	0.06
select EMPLOYEE_ID, FIRST_NAME, SALARY, DEPARTMENT_ID, sum(SALARY) over()
from my_emp;
MYTESTDB	1766704890180	SQL	1	0.051
select productid , ORDERDATE, sum(SALES) over(partition by productid,ORDERDATE)
from sales_orders;
MYTESTDB	1766349178039	SQL	1	0.087
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY , RANK() OVER(ORDER BY SALARY DESC)
FROM MY_EMP;
MYTESTDB	1766637880800	SQL	1	0.061
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, salary , lead(FIRST_NAME) over(order by salary) lead_Name
, lead(salary) over(order by salary) lead_sal,  lag(FIRST_NAME) over(order by salary) Lag_Name
, lag(salary) over(order by salary) lag_salary
from my_emp order by salary desc;
MYTESTDB	1766691667397	SQL	1	0.06
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE , lead(FIRST_NAME) over(order by salary) After_Name
, lead(salary) over(order by salary) After_Date,  lag(FIRST_NAME) over(order by salary) Before_Name
, lag(salary) over(order by salary) Before_Date
from my_emp order by hire_date;
MYTESTDB	1766691566547	SQL	1	0.101
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY 
, RANK() OVER(ORDER BY SALARY DESC),DENSE_RANK()  OVER(ORDER BY ROUND(SALARY) DESC),
row_number()over(ORDER BY SALARY DESC)
FROM MY_EMP;
MYTESTDB	1766640404242	SQL	1	0.061
select productid , ORDERDATE, sum(SALES) over(partition by productid,ORDERDATE ) as Total_sale
from sales_orders
order by productid desc;
MYTESTDB	1766349567644	SQL	2	0.042
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, salary , lead(FIRST_NAME) over(order by salary) lead_Name
, lead(salary) over(order by salary) lead_sal,  lag(first_name || ' ' || last_name) over(order by salary) Lag_full_Name
, lag(salary) over(order by salary) lag_salary
from my_emp order by salary desc;
MYTESTDB	1766691832284	SQL	1	0.066
select productid , ORDERDATE, sum(SALES) over(partition by productid,ORDERDATE) as Total_sale
from sales_orders;
MYTESTDB	1766349228975	SQL	1	0.058
select EMPLOYEE_ID, FIRST_NAME, SALARY, DEPARTMENT_ID, avg(SALARY) over()
from my_emp;
MYTESTDB	1766704899242	SQL	1	0.049
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE , lead(FIRST_NAME) over(order by HIRE_DATE) After_Name
, lead(HIRE_DATE) over(order by HIRE_DATE) After_Date
from my_emp order by hire_date;
MYTESTDB	1766684742090	SQL	1	0.058
select * from
sales_ordersarchive;
MYTESTDB	1766368486801	SQL	1	0.052
select avg(salary) from my_emp;
MYTESTDB	1766634358196	SQL	1	0.077
select count(QUANTITY) as "Total Quantity", CUSTOMERID from sales_orders
group by CUSTOMERID;
MYTESTDB	1766329593401	SQL	1	0.062
select productid,shipdate ,  sum(SALES) over()
from sales_orders;
MYTESTDB	1766347408005	SQL	1	0.05
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Revenue PURGE';
EXCEPTION WHEN OTHERS THEN NULL;
END;
COMMIT;
MYTESTDB	1766370827120	Script	1	0.445
select productid, sum(SALES) over()
from sales_orders;
MYTESTDB	1766347380693	SQL	1	0.059
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE , lead(FIRST_NAME) over(order by HIRE_DATE)
from my_emp order by hire_date;
MYTESTDB	1766684647156	SQL	1	0.059
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY , RANK() OVER(ORDER BY SALARY DESC),DENSE_RANK()  OVER(ORDER BY SALARY DESC)
FROM MY_EMP;
MYTESTDB	1766638000524	SQL	1	0.059
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY , RANK() OVER(ORDER BY SALARY DESC),DENSE_RANK()  OVER(ORDER BY ROUND(SALARY) DESC)
FROM MY_EMP;
MYTESTDB	1766640298557	SQL	2	0.053
desc employees_enrich;
MYTESTDB	1766634464442	SQL	1	0.79
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, salary , lead(FIRST_NAME) over(order by salary) lead_Name
, lead(salary) over(order by salary) lead_sal,  lag(FIRST_NAME) over(order by salary) Lag_Name
, lag(salary) over(order by salary) lag_salary
from my_emp order by salary;
MYTESTDB	1766691654705	SQL	1	0.059
select count(QUANTITY) , CUSTOMERID from sales_orders
group by CUSTOMERID;
MYTESTDB	1766329561231	SQL	1	0.061
SELECT
    owner      AS schema_name,
    table_name
FROM all_tables
--where SCHEMA_NAME ='SCOTT'
ORDER BY owner, table_name;
MYTESTDB	1766329248229	SQL	1	0.178
select productid ,  sum(SALES) over(partition by productid)
from sales_orders;
MYTESTDB	1766348637207	SQL	1	0.065
SELECT DISTINCT JOB_id FROM MY_EMP;
MYTESTDB	1766636228322	SQL	1	0.055
select EMPLOYEE_ID, FIRST_NAME, SALARY, DEPARTMENT_ID, avg(SALARY) over() as avgSal
from my_emp;
MYTESTDB	1766704922815	SQL	1	0.053;
