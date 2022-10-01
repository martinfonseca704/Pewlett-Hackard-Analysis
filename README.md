# Pewlett-Hackard-Analysis

## Project Overview
  Pewlett Hackard is a large company, posting several thousand employees and it’s been around for a long long time as baby boomers begin to retire at a rapid rate. Pewlett Hackard is looking toward the future in two ways first, it’s offering retirement package for those who meet certain criteria, second it’s starting to think about which positions need to be filled in the near future the number of upcoming retirement will leave thousands of job openings. Bobby is an up-and-coming HR analyst and whose task is to form employee research specifically. He needs to find answers to the following questions who will be retiring in the next few years and how many positions will Pewlett Hackard need to fill this analysis will help future proof Pewlett Hackard by generating a list of all employees elegible for the retirement package. The employee data Bobby needs is only available in the form of six CSV files because Pewlett Hackard has been manly using Excel & VBA to work with their data now they finally decided to update their method and instead use SQL a definite upgrade considering the amount of data your task is to help Bobby build a database by using SQL and applying your data modeling engineering and analysis skills

## Analysis
### Deliverable 1
  
- The keys that were pulled was emp_no, first_name, and last_name columns from the Employees table.
- Followed by the title, from_date, and to_date columns from the Titles table.
- A new table was created using the INTO clause.
- Joined both tables on the primary key.
- Filtered the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, ordered by the employee number.

 ![Screenshot (129)](https://user-images.githubusercontent.com/107590239/193379977-d4868717-30ff-4832-89b3-4df6c0cf02fc.png)
 
- Pulled the employee number, first and last name, and title columns from the Retirement Titles table.
- The columns got inserted into the new table that will hold the most recent title of each employee.
- Used the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
- Excluded the employees that have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.
- Created a Unique Titles table using the INTO clause.
- Sorted the Unique Titles table in ascending order by the employee number and descending order by the last date of the most recent title.

  ![Screenshot (130)](https://user-images.githubusercontent.com/107590239/193379982-e9b2ee1e-2242-4009-be9a-a10cbe96b4c8.png)
  
- First, retrieved the number of titles from the Unique Titles table.
- Then, created a Retiring Titles table to hold the required information.
- Grouped the table by title, then sort the count column in descending order.

  ![Screenshot (131)](https://user-images.githubusercontent.com/107590239/193379990-1dafa9bb-45d0-4c30-a263-56486240f862.png)
  
### Deliverable 2
- Pulled the emp_no, first_name, last_name, and birth_date columns from the Employees table.
- Pulled the from_date and to_date columns from the Department Employee table.
- Pulled the title column from the Titles table.
- Used a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
- Created a new table using the INTO clause.
- Joined the Employees and the Department Employee tables on the primary key.
- Joined the Employees and the Titles tables on the primary key.
- Filtered the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
- Ordered the table by the employee number.

  ![Screenshot (132)](https://user-images.githubusercontent.com/107590239/193379997-897d0f75-8ba9-4125-a92b-e55d0bf2ca25.png)
  
## Results
- Retirement titles data isnt usfull(data needed cleaing & had repeating values) looking directly but with clean up has potental
- Unique title is the cleaned version of retirement title showing individuAL employees
- Retiring titles was an efficient "zoom out" showing how many potental retirees for titles
- Mentorship Eligibility showed empoyees that could fill in those missing positions

## Conclusion
### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
- There are 72,458 roles at risk to be left empty
### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
- No, the 1,549 employees who are eligible to participate in a mentorship program, will only cover 2% of the roles
