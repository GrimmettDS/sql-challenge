-- Employee Database Tables

-- Create table for Departments
-- Drop table if exists
DROP TABLE if exists departments;

CREATE TABLE departments (
	dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(50) NOT NULL
);

-- Create table for Titles
-- Drop table if exists
DROP TABLE if exists titles;

CREATE TABLE titles (
	title_id VARCHAR(10) NOT NULL PRIMARY KEY,
	title VARCHAR(20) NOT NULL
);

-- Create table for Employees
-- Drop table if exists
DROP TABLE if exists employees;

CREATE TABLE employees (
	emp_no INTEGER NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	sex VARCHAR(5) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create table for Dept_Emp
-- Drop table if exists
DROP TABLE if exists dept_emp;

CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);	
	
-- Create table for Dept_Manager
-- Drop table if exists
DROP TABLE if exists dept_manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);	
	
-- Create table for Salaries
-- Drop table if exists
DROP TABLE if exists salaries;

CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);	