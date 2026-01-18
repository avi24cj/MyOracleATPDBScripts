MYTESTDB	1766329405468	SQL	1	0.247
-- Step 1: Create the table
CREATE TABLE MY_EMP_DEPT (
    department_id   NUMBER(4) PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL
);
-- Step 2: Insert real-time departments
INSERT INTO MY_EMP_DEPT (department_id, department_name) VALUES (10,  'Administration');
INSERT INTO MY_EMP_DEPT (department_id, department_name) VALUES (20,  'Marketing');
INSERT INTO MY_EMP_DEPT (department_id, department_name) VALUES (30,  'Purchasing');
INSERT INTO MY_EMP_DEPT (department_id, department_name) VALUES (40,  'Human Resources');
INSERT INTO MY_EMP_DEPT (department_id, department_name) VALUES (50,  'Shipping');
INSERT INTO MY_EMP_DEPT (department_id, department_name) VALUES (60,  'IT Support');
INSERT INTO MY_EMP_DEPT (department_id, department_name) VALUES (70,  'Public Relations');
INSERT INTO MY_EMP_DEPT (department_id, department_name) VALUES (80,  'Sales');
INSERT INTO MY_EMP_DEPT (department_id, department_name) VALUES (90,  'Executive');
INSERT INTO MY_EMP_DEPT (department_id, department_name) VALUES (100, 'Finance');
INSERT INTO MY_EMP_DEPT (department_id, department_name) VALUES (110, 'Accounting');
