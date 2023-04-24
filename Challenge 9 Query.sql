-- Data Analysis #1
SELECT employees.emp_no, 
  employees.last_name, 
  employees.first_name,  
  employees.sex,
  salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

-- Data Analysis #2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' and hire_date < '1986-12-31'

-- Data Analysis #3
SELECT department_manager.emp_no AS "Emp # Department Mgr",
	employees.last_name,
	employees.first_name,
	departments.dept_no,
	departments.dept_name
FROM department_manager
INNER JOIN employees ON
employees.emp_no = department_manager.emp_no
INNER JOIN departments ON
department_manager.dept_no = departments.dept_no;

-- Data Analysis #4
SELECT departments.dept_no,
	departments.dept_name,
	employees.last_name,
	employees.first_name,
	department_employee.emp_no
FROM department_employee
INNER JOIN departments ON
departments.dept_no = department_employee.dept_no
INNER JOIN employees ON
employees.emp_no = department_employee.emp_no;

-- Data Analysis #5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Data Analysis #6
SELECT departments.dept_name,
	department_employee.emp_no,	
	employees.last_name,
	employees.first_name
FROM department_employee
INNER JOIN employees ON
employees.emp_no = department_employee.emp_no
INNER JOIN departments ON
departments.dept_no = department_employee.dept_no
WHERE dept_name = 'Sales';

-- Data Analysis #7
SELECT departments.dept_name,
	department_employee.emp_no,	
	employees.last_name,
	employees.first_name
FROM department_employee
INNER JOIN employees ON
employees.emp_no = department_employee.emp_no
INNER JOIN departments ON
departments.dept_no = department_employee.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

-- Data Analysis #8
SELECT last_name, COUNT(last_name) AS "last_name_frequency"
FROM employees
GROUP BY last_name
ORDER BY "last_name_frequency" DESC;
