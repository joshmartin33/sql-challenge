
<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/joshmartin33/sql-challenge.git">
    <img src="EmployeeSQL/images/logo.png" alt="Logo" width="80" height="70">
  </a>

<h3 align="center">sql-challenge</h3>

  <p align="center">
    Pewlett Hackard Employees Through 1980s and 1990s
    <br />
    <a href="https://github.com/joshmartin33/sql-challenge.git"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/joshmartin33/sql-challenge/blob/main/bonus_visualisation.ipynb">View Analysis</a>
    ·
    <a href="https://github.com/joshmartin33/sql-challenge/issues">Report Bug</a>
  </p>
</div>


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#analysis-questions">Analysis Questions</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#creators">Creators</a></li>
    <li><a href="#citing-and-referencing">Citing and Referencing</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

My first project at Pewlett Hackard (a fictional company) is to complete a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, I will design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Analysis Questions -->
## Analysis Questions

1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.

### Installation
 
1. Install "PostgreSQL" throught this link https://www.postgresql.org/download/

2. Select your operating system.

3. Click on the "Download the installer" link

4. Download the latest version avaiable

6. Once downloaded, open the installer and follow the steps to complete the installation

5. If you need any help with the installation of PostgreSQL you can find install resoures here https://www.postgresql.org/docs/current/tutorial-install.html


### pgAdmin

1. Clone the repo
   ```sh
   git clone https://github.com/joshmartin33/sql-challenge.git
   ```
2. Open pgAmin and create a new database called 
   ```js
   sql-challenge
   ```
3. Right click on the sql-challenge database and click on `Query tool`
   
4. Within the Query Tool, open and run file called `schema` located
   ```js
   Where_you_cloned_the_repo + \sql-challenge\EmployeeSQL\schema
   ```

    You now have your tables and columns created. We will next step over how to read in your csv files.

### Note: You will need to import data into the tables in the following order.

    * titles
    * departments
    * employee
    * salaries
    * dept_empl
    * dept_manager

5. Expand the sql-challenge databse, then Schemas, public and then Tables

6. Right click on the table then select Import/Export Data

7. In this window click on Options and make sure Header is selected

8. Click on General and then click on the file name

9. Locate the applicable csv relatined to the table you have selected ie. If you have slected departments as the table you need to select departments as the csv file.

10. Then click OK

11. Repeat ths process for all tables ensuring you complete this in the correct order.


Before we can run our analysis we have to run a query to convert text to date.


12. Right click on the sql-challenge database and click on `Query tool`
   
13. Within the Query Tool, open and run file called `convert_text_to_date` located
   ```js
   Where_you_cloned_the_repo + \sql-challenge\EmployeeSQL\convert_text_to_date
```

Lastly we run our analysis query

14. Right click on the sql-challenge database and click on `Query tool`
   
15. Within the Query Tool, open and run file called `queries` located
   ```js
   Where_you_cloned_the_repo + \sql-challenge\EmployeeSQL\queries
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Creators -->
## Creators

Josh Martin - [https://github.com/joshmartin33](https://github.com/joshmartin33)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Citing and Referencing -->
## Citing and Referencing

* Data generated by Mockaroo, LLC


<p align="right">(<a href="#readme-top">back to top</a>)</p>