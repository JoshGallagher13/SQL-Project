CREATE VIEW emp_info AS
SELECT employees.emp_no, first_name, last_name, sex, salaries.salary
FROM employees
JOIN salaries
ON (employees.emp_no = salaries.emp_no)
ORDER BY emp_no ASC

CREATE VIEW hire_date_1986 AS
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'

CREATE VIEW dept_managers AS
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM employees
INNER JOIN dept_manager
ON (employees.emp_no = dept_manager.emp_no)
JOIN departments
ON (dept_manager.dept_no = departments.dept_no)

CREATE VIEW emp_departments AS
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN departments
ON (dept_emp.dept_no = departments.dept_no)
ORDER BY emp_no ASC

CREATE VIEW hercules_b AS
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name ASC

CREATE VIEW sales AS
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN departments
ON (dept_emp.dept_no = departments.dept_no)
WHERE dept_name = 'Sales'
ORDER BY emp_no ASC

CREATE VIEW sales_dev AS
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN departments
ON (dept_emp.dept_no = departments.dept_no)
WHERE dept_name = 'Sales' OR dept_name = 'Development'
ORDER BY emp_no ASC

CREATE VIEW name_count AS
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC


