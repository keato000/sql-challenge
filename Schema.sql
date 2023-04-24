-- Drop tables if exists
DROP TABLE departments cascade;
DROP TABLE if exists department_manager;
DROP TABLE if exists department_employee;
DROP TABLE if exists titles cascade;
DROP TABLE if exists salaries;
DROP TABLE if exists employees;

-- Create table and view column datatypes
CREATE TABLE departments (
	dept_no VARCHAR (20) PRIMARY KEY,
	dept_name VARCHAR (20)
);

-- Create table and view column datatypes
CREATE TABLE department_manager (
	dept_no VARCHAR (20), FOREIGN KEY (dept_no) references departments (dept_no),
	emp_no INT NOT NULL
);

-- Create table and view column datatypes
CREATE TABLE department_employee (
	emp_no INT NOT NULL,
	dept_no VARCHAR (20), FOREIGN KEY (dept_no) references departments (dept_no)
);

-- Create table and view column datatypes
CREATE TABLE titles (
	title_id VARCHAR (20) PRIMARY KEY,
	title VARCHAR (20)
);

-- Create table and view column datatypes
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY NOT NULL,
	salary INT 
);

-- Create table and view column datatypes
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR (20),
	birth_date DATE,
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	sex VARCHAR (20),
	hire_date DATE, FOREIGN KEY (emp_title_id) references titles(title_id)
);



