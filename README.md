# SQL-challenge
Module 9
# Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modelling, data engineering, and data analysis, respectively.

# Instructions
This Challenge is divided into three parts: data modelling, data engineering, and data analysis.

# Data Modelling
Inspect the CSV files, and then sketch an ERD of the tables. To create the sketch, feel free to use a tool like QuickDBDLinks to an external site..

![ERD from QuickDBD](https://github.com/user-attachments/assets/4e0a8f9b-cbd5-44ca-99b4-e451b9482452)

# Data Engineering
1. Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:
   - Remember to specify the data types, primary keys, foreign keys, and other constraints.
   - For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.
   - Be sure to create the tables in the correct order to handle the foreign keys.

2. Import each CSV file into its corresponding SQL table.

# Data Analysis
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

# Submission
Before submitting your Challenge assignment, make sure that you’ve done the following:
- Create an image file of your ERD.
- Create a .sql file of your table schemata.
- Create a .sql file of your queries.
- Ensure that your repository has regular commits and a thorough README.md file
