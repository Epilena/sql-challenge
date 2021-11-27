CREATE TABLE employees(
emp_no INTEGER PRIMARY KEY,
emp_title VARCHAR,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
sex CHAR,
hire_date DATE
);

CREATE TABLE salaries (
emp_no INTEGER PRIMARY KEY
salary integer,
);

CREATE TABLE departments(
dept_no VARCHAR PRIMARY KEY,
dept_name VARCHAR
);

CREATE TABLE dept_emp (
emp_no INTEGER, 
dept_no VARCHAR,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE dept_manager (
dept_no VARCHAR,
emp_no INTEGER,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments,
PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE titles (
title_id VARCHAR PRIMARY KEY,
title VARCHAR
);

--SELECT * FROM dept_manager;

--#1 list employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM salaries as s
	INNER JOIN employees as e
		ON e.emp_no = s.emp_no;
		
--#2 list first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';

--#3 list manager of ea dept with deptnumber, department name, manager's employee number, last name, first name
SELECT dm.dept_no, dm.emp_no, e.last_name, e.first_name
FROM employees as e
	INNER JOIN dept_manager as dm
		ON dm.emp_no = e.emp_no;
SELECT dm.dept_no, dt.dept_name, dm.emp_no
FROM departments as dt
	INNER JOIN dept_manager as dm
		ON dm.dept_no = dt.dept_no;
SELECT
	dm.dept_no as dept_no,
	dt.dept_name as dept_name,
	dm.emp_no as emp_no,
	e.last_name as last_name,
	e.first_name as first_name
FROM
	dept_manager as dm
		INNER JOIN departments as dt
			ON (dm.dept_no = dt.dept_no)
		INNER JOIN employees as e
			ON (dm.emp_no = e.emp_no);
			
--#4 list the department of each employee with employee number, last name, first name, department name
SELECT e.emp_no, e.last_name, e.first_name, dt.dept_name
FROM employees as e
	INNER JOIN dept_emp as de
		ON (de.emp_no = e.emp_no)
	INNER JOIN departments as dt
		ON (dt.dept_no =de.dept_no);
		
--#5 List first name, last name, sex for employees with first name 'Hercules' last name with 'B'
SELECT first_name, last_name, sex
FROM employees WHERE first_name = 'Hercules' AND last_name like 'B%';

--#6 List employees in Sales Dept : employee #, last name, first name, dept name
SELECT e.emp_no, e.last_name, e.first_name, dt.dept_name
FROM employees as e
INNER JOIN dept_emp as de
	ON (de.emp_no =e.emp_no)
INNER JOIN departments as dt
	ON (dt.dept_no = de.dept_no)
WHERE dt.dept_name = 'Sales';

--#7 List all employees in Sales and Development departments : employee number, last name, first name, and dept name
SELECT e.emp_no, e.last_name, e.first_name, dt.dept_name
FROM employees as e
INNER JOIN dept_emp as de
	ON (de.emp_no =e.emp_no)
INNER JOIN departments as dt
	ON (dt.dept_no = de.dept_no)
WHERE dt.dept_name = 'Sales' OR dt.dept_name = 'Development';

--#8 list frequency count of employee last name in desecending order
SELECT last_name, COUNT(last_name) from employees 
	Group By last_name
	Order By COUNT (last_name) DESC;
