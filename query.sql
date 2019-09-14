Question 1:

SELECT employees.emp_no, 
    employees.last_name, 
    employees.first_name, 
    employees.gender, 
    salaries.salary
FROM employees
JOIN salaries
  ON employees.emp_no = salaries.emp_no;

Question 2:

SELECT * FROM employees 
WHERE hire_date 
	BETWEEN '1986-01-01' 
	AND '1986-12-31';

Question 3:

SELECT dept_manager.dept_no,
	departments.dept_name, 
	employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	dept_manager.from_date,
	dept_manager.to_date
FROM dept_manager
JOIN employees
  ON dept_manager.emp_no = employees.emp_no
JOIN departments
  ON dept_manager.dept_no = departments.dept_no
;

Question 4:

SELECT 
	employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name
FROM employees
JOIN dept_emp
  ON employees.emp_no = dept_emp.emp_no
JOIN departments
  ON dept_emp.dept_no = departments.dept_no
;

Question 5:

SELECT *FROM employees 
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

Question 6:

SELECT 
	employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name 
FROM employees
JOIN dept_emp
  ON employees.emp_no = dept_emp.emp_no
JOIN departments
  ON dept_emp.dept_no = departments.dept_no
AND dept_name = 'Sales';

Question 7:

SELECT 
	employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name 
FROM employees
JOIN dept_emp
  ON employees.emp_no = dept_emp.emp_no
JOIN departments
  ON dept_emp.dept_no = departments.dept_no
AND dept_name = 'Sales'
OR dept_name ='Development';

Question 8:

SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;