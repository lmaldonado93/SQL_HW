DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
	dept_no VARCHAR NOT NUll,
	dept_name VARCHAR Not NULL
);

CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR NOT NULL,
	from_date VARCHAR NOT NULL,
	to_date VARCHAR NOT NULL
);

CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INTEGER NOT NULL,
	from_date VARCHAR NOT NULL,
	to_date VARCHAR NOT NULL
);

CREATE TABLE employees (
	emp_no INTEGER NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date VARCHAR NOT NULL
);

CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	from_date VARCHAR NOT NULL,
	to_date VARCHAR NOT NULL
);

CREATE TABLE titles (
	emp_no INTEGER NOT NULL,
	title VARCHAR NOT NULL,
	from_date VARCHAR NOT NULL,
	to_date VARCHAR NOT NULL
);

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

