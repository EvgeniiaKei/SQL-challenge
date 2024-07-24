-- Creating new 6 tables
-- Create a new table for Titles
CREATE TABLE titles (
	title_id VARCHAR(15) NOT NULL,
	title VARCHAR(50) NOT NULL,
	PRIMARY KEY (title_id)
);

-- Create a new table for Employees
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(15)NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date VARCHAR(15) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	PRIMARY KEY (emp_no)
);

-- Create a new table for Departments
CREATE TABLE departments (
	dept_no VARCHAR(15) NOT NULL,
	dept_name VARCHAR(255) NOT NULL,
	PRIMARY KEY (dept_no)
);

-- Create a new table for Dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR(15) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

-- Create a new table for Dept_emp
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(15) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- Create a new table for Salaries

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no)
);

-- View tables
SELECT * FROM titles LIMIT(10);
SELECT * FROM departments LIMIT(10);
SELECT * FROM dep_manager LIMIT(10);
SELECT * FROM dep_emp LIMIT(10);
SELECT * FROM salaries LIMIT(10);