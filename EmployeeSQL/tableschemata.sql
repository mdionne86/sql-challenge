--this code creates the tables, setting up the primary and foreign keys
CREATE TABLE "departments" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

--import data to table, then check
select *
from departments;

--create table
CREATE TABLE "titles" (
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);
--import data, check table
select *
from titles;

--create table
CREATE TABLE "employees" (
    "emp_no" varchar   NOT NULL,
    "emp_title" varchar   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

--set FK
ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title" FOREIGN KEY("emp_title")
REFERENCES "titles" ("title_id");

--import data, check table (300,024 rows)
select *
from employees
limit 10;

--create table
CREATE TABLE "salaries" (
    "emp_no" varchar   NOT NULL,
    "salary" int   NOT NULL
);
--set FK
ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

--import data, check table (300,024 rows)
select *
from salaries
limit 10;

--create table
CREATE TABLE "dept_emp" (
    "emp_no" varchar   NOT NULL,
    "dept_no" varchar   NOT NULL,
	PRIMARY KEY(emp_no, dept_no)     
);

--set FK
ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

--import data, check table
select *
from dept_emp
limit 10;

--create table
CREATE TABLE "dept_manager" (
    "dept_no" varchar   NOT NULL,
    "emp_no" varchar   NOT NULL,
	PRIMARY KEY(dept_no, emp_no)
);

--set fk
ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

--import data, check table
select *
from dept_manager
limit 10;