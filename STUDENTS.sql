Tutorial	1736616221023	SQL	1	0.005
CREATE TABLE  STUDENTS
(
    ID               VARCHAR(20) PRIMARY KEY
  , FIRST_NAME       VARCHAR(100) NOT NULL
  , LAST_NAME        VARCHAR(100) NOT NULL
  , GENDER           VARCHAR(10) CHECK (GENDER IN ('M', 'F', 'Male', 'Female'))
  , AGE              INT
  , DOB              DATE
  --, GRADE            FLOAT
  --, IS_ACTIVE        BOOLEAN
  , CONSTRAINT CH_STUDENTS_AGE CHECK (AGE > 0)
);
