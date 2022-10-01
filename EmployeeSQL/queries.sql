-- 1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.empl_id, e.last_name, e.first_name, e.sex, s.salary 
FROM employee AS e
INNER JOIN salaries as s ON
e.empl_id=s.empl_id;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employee
WHERE EXTRACT(YEAR FROM hire_date) = 1986
ORDER BY  hire_date;

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT dm.dept_id, dp.dept_name, dm.empl_id, em.last_name, em.first_name 
FROM dept_manager as dm
INNER JOIN departments as dp ON
dm.dept_id=dp.dept_id
INNER JOIN employee as em ON
dm.empl_id=em.empl_id;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT de.dept_id, de.empl_id, em.last_name, em.first_name, dp.dept_name 
FROM dept_empl as de
INNER JOIN departments as dp ON
de.dept_id=dp.dept_id
INNER JOIN employee as em ON
de.empl_id=em.empl_id;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT em.first_name, em.last_name, em.sex 
FROM employee as em
WHERE first_name = 'Hercules'
AND
last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

SELECT de.empl_id, em.last_name, em.first_name 
FROM dept_empl as de
INNER JOIN departments as dp ON
de.dept_id=dp.dept_id
INNER JOIN employee as em ON
de.empl_id=em.empl_id
WHERE dp.dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT de.empl_id, em.last_name, em.first_name, dp.dept_name
FROM dept_empl as de
INNER JOIN departments as dp ON
de.dept_id=dp.dept_id
INNER JOIN employee as em ON
de.empl_id=em.empl_id
WHERE dp.dept_name = 'Sales' 
OR
dp.dept_name ='Development'
ORDER BY de.empl_id;


-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, count(last_name) as frequency_counts
FROM employee
GROUP BY last_name 
ORDER BY frequency_counts DESC;