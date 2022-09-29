--vvvDeliverable 1vvv
-- Use Dictinct with Orderby to remove duplicate rows
/*SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;*/
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date 
INTO retire_titles
FROM Employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no;
--Filter the data IN birth_date FOR between 1952 and 1955. Then, order by the employee number.
--Export the Retirement Titles table from the previous step as retirement_titles.csv
--save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,first_name, last_name, title
INTO unique_titles
FROM retire_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no ASC, to_date DESC
--
SELECT COUNT(ut.emp_no),
ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;
--^^^Deliverable 1^^^

--vvvDeliverable 2vvv
SELECT DISTINCT ON(e.emp_no) e.emp_no, 
    e.first_name, 
    e.last_name, 
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
INTO mentor_eligibilty
FROM employees as e
Left outer Join dept_emp as de
ON (e.emp_no = de.emp_no)
Left outer Join titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
--^^^Deliverable 2^^^