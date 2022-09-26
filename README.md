# Pewlett-Hackard-Analysis

##Project Overview
  Now that Bobby has proven his SQL chops, his manager has given both of you two more assignments: determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then, you’ll write a report that summarizes your analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.

##Analysis
  Using the ERD created in this module as a reference to knowledge of SQL queries, a Retirement Titles table was created that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. Because some employees may have multiple titles in the database—for example, due to promotions its crucial to use the DISTINCT ON statement to create a table that contains the most recent title of each employee. Then, use the COUNT() function to create a table that has the number of retirement-age employees by most recent job title. Finally, because its necessary to include only current employees in the analysis, be sure to exclude those employees who have already left the company.
  Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

##Conclusion
Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
