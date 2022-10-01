-- Use to_date() to convert text to date
ALTER TABLE employee 
ALTER COLUMN birth_date SET DATA TYPE date
      USING to_date(birth_date, 'MM/DD/YYYY'),
	  ALTER COLUMN hire_date SET DATA TYPE date
      USING to_date(hire_date, 'MM/DD/YYYY');
