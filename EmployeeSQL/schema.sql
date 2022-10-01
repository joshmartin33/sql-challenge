drop table dept_manager;
drop table dept_empl;
drop table salaries;
drop table employee;
drop table departments;
drop table titles;

-- Create a title table
CREATE TABLE titles (
    title_id VARCHAR(20),
    title VARCHAR(100) NOT NULL,
    PRIMARY KEY (title_id)
);

-- Create a departments table
CREATE TABLE departments (
    dept_id VARCHAR(20),
    dept_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (dept_id)
);

-- Create a employee table
CREATE TABLE employee (
    empl_id INT,
    title_id VARCHAR(20) NOT NULL,
	birth_date VARCHAR(20),
	first_name VARCHAR(50)NOT NULL,
	last_name VARCHAR(50)NOT NULL,
	sex VARCHAR(1),
	hire_date VARCHAR(20),
    PRIMARY KEY (empl_id),
	FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

-- Create a salarie table
CREATE TABLE salaries (
    empl_id INT NOT NULL,
    salary MONEY NOT NULL,
    FOREIGN KEY (empl_id) REFERENCES employee(empl_id)
);

-- Create a dept_empl table
CREATE TABLE dept_empl (
    empl_id INT NOT NULL,
    dept_id VARCHAR(20),
    FOREIGN KEY (empl_id) REFERENCES employee(empl_id),
	FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Create a dept_empl table
CREATE TABLE dept_manager (
    dept_id VARCHAR(20),
	empl_id INT NOT NULL,
    FOREIGN KEY (empl_id) REFERENCES employee(empl_id),
	FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
